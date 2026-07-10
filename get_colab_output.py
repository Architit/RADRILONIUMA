import json
import urllib.request
import websocket

try:
    with urllib.request.urlopen("http://localhost:9222/json", timeout=2) as response:
        tabs = json.loads(response.read().decode())
        ws_url = None
        for tab in tabs:
            if "colab.research.google.com" in tab.get("url", ""):
                ws_url = tab["webSocketDebuggerUrl"]
                break
except Exception as e:
    print(f"Failed to connect to Chrome: {e}")
    exit(1)

if not ws_url:
    print("Colab tab not found.")
    exit(1)

ws = websocket.create_connection(ws_url)

js_scrape = """
(function() {
    let outputs = [];
    // Скрапим тексты вывода из элементов разметки Colab
    document.querySelectorAll(".output-text, .output_subarea, pre").forEach(el => {
        let txt = el.innerText || el.textContent;
        if (txt && txt.trim()) {
            outputs.push(txt.trim());
        }
    });
    return outputs.join("\\n-----------------------\\n");
})()
"""

ws.send(json.dumps({
    "id": 1,
    "method": "Runtime.evaluate",
    "params": {
        "expression": js_scrape,
        "returnByValue": True
    }
}))
res = json.loads(ws.recv())
val = res.get("result", {}).get("result", {}).get("value", "No output found")
print(val)
ws.close()
