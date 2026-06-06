const { Server } = require("@modelcontextprotocol/sdk/server/index.js");
const { StdioServerTransport } = require("@modelcontextprotocol/sdk/server/stdio.js");
const { CallToolRequestSchema, ListToolsRequestSchema } = require("@modelcontextprotocol/sdk/types.js");
const { exec } = require("child_process");
const fs = require("fs");
const path = require("path");

const ORGAN_NAME = process.env.LAM_ORGAN_NAME || "trianiuma-mcp-core";

const server = new Server(
  { name: ORGAN_NAME, version: "1.0.0" },
  { capabilities: { tools: {} } }
);

const GATEWAY_PATH = path.join(__dirname, "../scripts/lam_gateway.py");
const VENV_PYTHON = path.join(__dirname, "../venv/bin/python");
const POLICY_PATH = path.join(__dirname, "../.gateway/routing_policy.json");

function localGatewayRoot() {
  const policy = JSON.parse(fs.readFileSync(POLICY_PATH, "utf8"));
  const root = policy?.providers?.local?.root;
  if (!root) {
    throw new Error("local provider root is not configured");
  }
  return root;
}

server.setRequestHandler(ListToolsRequestSchema, async () => {
  return {
    tools: [
      {
        name: `enqueue_task_${ORGAN_NAME.toLowerCase().replace(/-/g, "_")}`,
        description: `Постановка задачи Фазы А для органа ${ORGAN_NAME} в локальную очередь шлюза RADRILONIUMA`,
        inputSchema: {
          type: "object",
          properties: {
            task_id: { type: "string", description: "Уникальный ID задачи (например, TASK_002)" },
            action: { type: "string", description: "Действие (SYS_HEALTH_SNAPSHOT, LOG_MASK и др.)" },
            signer: { type: "string", defaultValue: "architit" }
          },
          required: ["task_id", "action"]
        }
      }
    ]
  };
});

server.setRequestHandler(CallToolRequestSchema, async (request) => {
  if (!request.params.name.startsWith("enqueue_task_")) {
    throw new Error("Неизвестный инструмент");
  }

  const { task_id, action, signer = "architit" } = request.params.arguments;
  
  // Формируем временную спецификацию
  const yamlContent = `task_id: "${task_id}"\nphase: "PHASE_A"\ncontract_match: true\npayload:\n  action: "${action}"\nmetadata:\n  protocol: "MIRASHANI"\n  signer: "${signer}"\n  target_organ: "${ORGAN_NAME}"`;
  
  const tmpDir = path.join(localGatewayRoot(), "mcp_tmp");
  const tmpPath = path.join(tmpDir, `tmp_${task_id}.yaml`);

  fs.mkdirSync(tmpDir, { recursive: true });
  fs.writeFileSync(tmpPath, yamlContent);

  return new Promise((resolve) => {
    exec(`${VENV_PYTHON} ${GATEWAY_PATH} enqueue-put ${tmpPath}`, (error, stdout, stderr) => {
      if (error) {
        resolve({ content: [{ type: "text", text: `Ошибка шлюза: ${stderr || error.message}` }], isError: true });
      } else {
        resolve({ content: [{ type: "text", text: `Контракт [${ORGAN_NAME}] успешно поставлен в очередь шлюза:\n${stdout}` }] });
      }
    });
  });
});

async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
  console.error("Trianiuma MCP Core успешно подключен к stdio транспорту.");
}

main().catch(console.error);
