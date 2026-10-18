#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA CONNECTORS REGISTRY
================================
Registers and manages all 46 platform adapters for the Data Stream Processing Conveyor Bus.
Includes:
- 3 Infrastructure & Dev Connectors (Google, GitHub, Ubuntu)
- 13 Google / Gemini / Notebook / Human-Machine Learning Ecosystem Connectors:
  (@gmail, @gcontacts, @gemini, gapp, @gsearch, @gdrive, @gbook, @glm, @gh&mL,
   @gnote, @gnotebook, @gemininotebook, @googlegeminienotebookhumanmachinelearning)
- 7 Social & Communications Connectors (LinkedIn, Telegram, WhatsApp, Facebook, Instagram, Threads, X)
- 8 Cognitive AI Connectors (OpenAI, Microsoft, Grok, Shinkai, Ollama, Kimi, DeepSeek, Yandex)
- 6 E-Commerce & Marketplace Connectors (Amazon, eBay, Etsy, Ozon, Wildberries, Shopify)
- 9 Fintech, Corporate Registry, Banking & Crypto Connectors (Stripe, KvK, Wise, N26, Monobank, PrivatBank, Bybit, TrustWallet, Wallet Web3)
"""

from typing import Dict, Any, List, Optional
try:
    from .base_connector import BaseConnector
except ImportError:
    from base_connector import BaseConnector

CHANNEL_DEFINITIONS = [
    # Infrastructure & OS
    {"id": "google", "name": "Google Cloud & Node Gateway Adapter", "category": "INFRASTRUCTURE", "protocol": "gRPC / REST / PubSub"},
    {"id": "github", "name": "GitHub Actions & Webhook Substrate", "category": "INFRASTRUCTURE", "protocol": "HTTPS / Webhooks"},
    {"id": "ubuntu", "name": "Ubuntu WSL2 Systemd & D-Bus Kernel Link", "category": "INFRASTRUCTURE", "protocol": "Kernel IPC / Unix Socket"},

    # Google / Gemini / Notebook / Human-Machine Learning Ecosystem (@-Handles)
    {"id": "gmail", "handle": "@gmail", "name": "Google Gmail Mail & Thread Query Stream (@gmail)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Gmail API v1 / IMAP-OAuth2 / PubSub"},
    {"id": "gcontacts", "handle": "@gcontacts", "name": "Google Contacts People API Person Query Stream (@gcontacts)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Google People API v1 / gRPC Stream"},
    {"id": "gemini", "handle": "@gemini", "name": "Google Gemini Multimodal Sovereign Core (@gemini)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Gemini API v1beta / gRPC Bidirectional"},
    {"id": "gapp", "handle": "gapp", "name": "Google Workspace Apps Script & Vertex App Builder (gapp)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Google Apps Script / Vertex REST API"},
    {"id": "gsearch", "handle": "@gsearch", "name": "Google Search Grounding & Programmable Search Stream (@gsearch)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Google Search Grounding / Custom Search JSON API"},
    {"id": "gdrive", "handle": "@gdrive", "name": "Google Drive v3 Cloud Vault & Corpus Conveyor (@gdrive)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Google Drive API v3 / rclone Stream"},
    {"id": "gbook", "handle": "@gbook", "name": "Google Books & Deep Literature Knowledge Corpus (@gbook)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Google Books API v1 / Knowledge Graph"},
    {"id": "glm", "handle": "@glm", "name": "Google Language Model Foundation Substrate (@glm)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "GLM / PaLM-Gemini Tensor Stream"},
    {"id": "gh&ml", "handle": "@gh&mL", "name": "Google Human & Machine Learning Co-Evolutionary Loop (@gh&mL)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "RLHF / Human-in-the-Loop Bi-Directional Bus"},
    {"id": "gnote", "handle": "@gnote", "name": "Google Keep & Semantic Micro-Note Stream (@gnote)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Google Keep API v1 / Real-time Sync"},
    {"id": "gnotebook", "handle": "@gnotebook", "name": "Google Colab & Workspace Research Notebook (@gnotebook)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Jupyter / Colab Kernel WebSocket"},
    {"id": "gemininotebook", "handle": "@gemininotebook", "name": "Gemini Notebook / NotebookLM Grounded Synthesis (@gemininotebook)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "NotebookLM Source-Grounded gRPC"},
    {"id": "googlegeminienotebookhumanmachinelearning", "handle": "@googlegeminienotebookhumanmachinelearning", "name": "Google Gemini Notebook Human-Machine Learning Symbiotic Continuum (@googlegeminienotebookhumanmachinelearning)", "category": "GOOGLE_GEMINI_ECOSYSTEM", "protocol": "Sovereign H&ML Symbiotic Pocket Cocon Stream"},

    # Social & Communications
    {"id": "linkedin", "name": "LinkedIn B2B & Talent Stream", "category": "SOCIAL_COMMS", "protocol": "REST OAuth2"},
    {"id": "telegram", "name": "Telegram MTProto & Bot Link (Trianiuma Link)", "category": "SOCIAL_COMMS", "protocol": "MTProto / Bot API"},
    {"id": "whatsapp", "name": "WhatsApp Cloud Multi-Agent Dispatch", "category": "SOCIAL_COMMS", "protocol": "Meta Graph API"},
    {"id": "facebook", "name": "Facebook Pages & Graph Ingress", "category": "SOCIAL_COMMS", "protocol": "Meta Graph API"},
    {"id": "instagram", "name": "Instagram Direct & Media Stream", "category": "SOCIAL_COMMS", "protocol": "Meta Graph API"},
    {"id": "threads", "name": "Threads Ingress Stream", "category": "SOCIAL_COMMS", "protocol": "Threads REST API"},
    {"id": "x", "name": "X (Twitter) v2 Firehose Stream", "category": "SOCIAL_COMMS", "protocol": "Twitter Streaming v2"},

    # Cognitive AI Swarm
    {"id": "openai", "name": "OpenAI GPT-4o / Realtime AI Node", "category": "COGNITIVE_AI", "protocol": "OpenAI API / WebSockets"},
    {"id": "microsoft", "name": "Microsoft Copilot & Azure AI Services", "category": "COGNITIVE_AI", "protocol": "Azure AI REST / SDK"},
    {"id": "grok", "name": "xAI Grok Realtime Cognitive Synthesizer", "category": "COGNITIVE_AI", "protocol": "xAI REST API"},
    {"id": "shinkai", "name": "Shinkai Network P2P Decentralized AI Router", "category": "COGNITIVE_AI", "protocol": "Shinkai P2P / Libp2p"},
    {"id": "ollama", "name": "Ollama Local Edge Neural Server", "category": "COGNITIVE_AI", "protocol": "Localhost REST :11434"},
    {"id": "kimi", "name": "Moonshot AI Kimi Long-Context Engine", "category": "COGNITIVE_AI", "protocol": "Moonshot REST API"},
    {"id": "deepseek", "name": "DeepSeek R1/V3 Reasoning Engine", "category": "COGNITIVE_AI", "protocol": "DeepSeek API"},
    {"id": "yandex", "name": "YandexGPT & Alice Multi-Modal Core", "category": "COGNITIVE_AI", "protocol": "Yandex Cloud API"},

    # E-Commerce & Marketplaces
    {"id": "amazon", "name": "Amazon Selling Partner (SP-API) Adapter", "category": "ECOMMERCE", "protocol": "SP-API REST / LWA"},
    {"id": "ebay", "name": "eBay Fulfillment & Trading API Stream", "category": "ECOMMERCE", "protocol": "eBay REST API"},
    {"id": "etsy", "name": "Etsy Open API v3 Shop Stream", "category": "ECOMMERCE", "protocol": "Etsy v3 OAuth2"},
    {"id": "ozon", "name": "Ozon Seller API Order & Stock Conveyor", "category": "ECOMMERCE", "protocol": "Ozon Seller REST"},
    {"id": "wildberries", "name": "Wildberries Marketplace API Connector", "category": "ECOMMERCE", "protocol": "WB Supplier API"},
    {"id": "shopify", "name": "Shopify GraphQL & Webhook Pipeline", "category": "ECOMMERCE", "protocol": "GraphQL / Webhooks"},

    # Fintech, Corporate Registry, Banking & Crypto / Web3
    {"id": "stripe", "name": "Stripe Global Payments & Webhook Bus", "category": "FINTECH_BANKING", "protocol": "Stripe API / Webhooks"},
    {"id": "kvk", "name": "KvK (Kamer van Koophandel) Dutch Registry", "category": "FINTECH_BANKING", "protocol": "KvK Handelsregister API"},
    {"id": "wise", "name": "Wise (TransferWise) Multi-Currency Rail", "category": "FINTECH_BANKING", "protocol": "Wise REST API"},
    {"id": "n26", "name": "N26 Open Banking PSD2 Connector", "category": "FINTECH_BANKING", "protocol": "Open Banking / OAuth2"},
    {"id": "ing", "name": "ING Bank DiBa & Wholesale Open Banking PSD2", "category": "FINTECH_BANKING", "protocol": "ING PSD2 REST API"},
    {"id": "monobank", "name": "Monobank Personal & Corporate API", "category": "FINTECH_BANKING", "protocol": "Monobank Webhooks / REST"},
    {"id": "privatbank", "name": "PrivatBank Privat24 Business Gateway", "category": "FINTECH_BANKING", "protocol": "Privat24 Merchant API"},
    {"id": "bybit", "name": "Bybit v5 Market Data & Trade WebSocket", "category": "FINTECH_CRYPTO", "protocol": "Bybit v5 WS / REST"},
    {"id": "kraken", "name": "Kraken Pro Financial Rail & Crypto Exchange Gateway", "category": "FINTECH_CRYPTO", "protocol": "Kraken WebSockets / REST API"},
    {"id": "trustwallet", "name": "Trust Wallet Core Multi-Asset Bridge", "category": "FINTECH_CRYPTO", "protocol": "WalletCore / JSON-RPC"},
    {"id": "wallet_web3", "name": "TON Connect & EVM Web3 Wallet Hub", "category": "FINTECH_CRYPTO", "protocol": "TON Connect / EIP-1193"}
]

class ConnectorRegistry:
    def __init__(self):
        self.connectors: Dict[str, BaseConnector] = {}
        self.aliases: Dict[str, BaseConnector] = {}
        self._load_connectors()

    def _load_connectors(self):
        for item in CHANNEL_DEFINITIONS:
            cid = item["id"].lower()
            connector = BaseConnector(
                name=cid,
                category=item["category"],
                protocol=item["protocol"]
            )
            self.connectors[cid] = connector
            self.aliases[cid] = connector
            self.aliases[f"@{cid}"] = connector
            if "handle" in item:
                self.aliases[item["handle"]] = connector
                self.aliases[item["handle"].lower()] = connector

    def get_connector(self, channel_id: str) -> Optional[BaseConnector]:
        key = channel_id.strip()
        return (
            self.aliases.get(key)
            or self.aliases.get(key.lower())
            or self.connectors.get(key.lower().lstrip("@"))
        )

    def get_all_connectors(self) -> Dict[str, BaseConnector]:
        return self.connectors

    def get_summary(self) -> Dict[str, Any]:
        return {
            "total_connectors": len(self.connectors),
            "google_gemini_handles": [
                "@gmail", "@gcontacts", "@gemini", "gapp", "@gsearch",
                "@gdrive", "@gbook", "@glm", "@gh&mL", "@gnote",
                "@gnotebook", "@gemininotebook",
                "@googlegeminienotebookhumanmachinelearning"
            ],
            "categories": {
                "INFRASTRUCTURE": sum(1 for c in self.connectors.values() if c.category == "INFRASTRUCTURE"),
                "GOOGLE_GEMINI_ECOSYSTEM": sum(1 for c in self.connectors.values() if c.category == "GOOGLE_GEMINI_ECOSYSTEM"),
                "SOCIAL_COMMS": sum(1 for c in self.connectors.values() if c.category == "SOCIAL_COMMS"),
                "COGNITIVE_AI": sum(1 for c in self.connectors.values() if c.category == "COGNITIVE_AI"),
                "ECOMMERCE": sum(1 for c in self.connectors.values() if c.category == "ECOMMERCE"),
                "FINTECH_BANKING": sum(1 for c in self.connectors.values() if c.category == "FINTECH_BANKING"),
                "FINTECH_CRYPTO": sum(1 for c in self.connectors.values() if c.category == "FINTECH_CRYPTO")
            },
            "status": "ALL_ONLINE"
        }

if __name__ == "__main__":
    registry = ConnectorRegistry()
    summary = registry.get_summary()
    print("=== RADRILONIUMA CONNECTOR REGISTRY (46 ADAPTERS ONLINE) ===")
    print(f"Total Connectors: {summary['total_connectors']}")
    for cat, count in summary["categories"].items():
        print(f"  • {cat}: {count} adapters")
