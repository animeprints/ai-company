# 🏢 AI Company Ecosystem

> Complete AI company infrastructure - One command setup for your cybersecurity, development, and AI automation needs.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Stars](https://img.shields.io/github/stars/animeprints/ai-company)](https://github.com/animeprints/ai-company/stargazers)
[![Forks](https://img.shields.io/github/forks/animeprints/ai-company)](https://github.com/animeprints/ai-company/network)

## 🚀 Quick Start

```bash
# One command setup
curl -sSL https://raw.githubusercontent.com/animeprints/ai-company/main/install.sh | bash
```

Or clone manually:

```bash
git clone https://github.com/animeprints/ai-company.git ~/ai-company
cd ~/ai-company
```

---

## 📦 What's Included

### 1. Strategic Report (`ai-ecosystem-strategic-report.md`)
Comprehensive analysis of:
- **90,987+ skills** from skills.sh
- **12,000+ MCP servers** in the ecosystem
- **AI Agent Frameworks** comparison (LangChain, CrewAI, AutoGen)
- **Cybersecurity tools** (PentAGI, Metasploit, Nuclei)
- Strategic recommendations for IT companies

### 2. Cybersecurity Module 🔐
| Tool | Purpose | Stars |
|------|---------|-------|
| **PentAGI** | Autonomous AI pentesting | 16.5K |
| Metasploit | Exploitation framework | 95K+ |
| Nuclei | Vulnerability scanning | 55K+ |
| Burp Suite | Web application testing | N/A |

**Tools included:**
- Recon: nmap, amass, subfinder
- Exploitation: sqlmap, hydra, hashcat
- AD Attacks: BloodHound, Impacket
- Cloud Security: Pacu (AWS), Azure tools
- LLM Security: garak, PyRIT

### 3. AI Agent Frameworks 🤖
| Framework | Best For | Stars |
|-----------|----------|-------|
| **LangGraph** | Complex production workflows | 98K+ |
| **CrewAI** | Rapid multi-agent prototyping | 52K+ |
| **AutoGen** | Microsoft enterprise | 40K+ |
| **OpenAI SDK** | GPT-native agents | 15K+ |
| **Claude Agent SDK** | MCP-native development | 10K+ |

### 4. MCP Servers (12,000+)
Connect AI to external tools:
- **Filesystem** (485K) - File operations
- **GitHub** (398K) - Repo management
- **PostgreSQL** (312K) - Database
- **Brave Search** (287K) - Web search
- **Playwright** (180K) - Browser automation
- **Slack** (150K) - Messaging
- **Firecrawl** (85K) - Web scraping

### 5. Skills (Top 100+)
| Rank | Skill | Installs | Use Case |
|------|-------|----------|---------|
| 1 | find-skills | 1.2M | Discovery |
| 2 | vercel-react-best-practices | 349K | React dev |
| 3 | frontend-design | 338K | UI/UX |
| 4 | soultrace | 312K | Personality AI |
| 5 | microsoft-foundry | 252K | Azure AI |
| 6 | azure-kubernetes | 150K | K8s on Azure |
| 7 | shadcn | 109K | UI components |
| 8 | seo-audit | 88K | SEO analysis |
| 9 | pdf | 84K | PDF handling |
| 10 | copywriting | 79K | Marketing copy |

---

## 🛠️ Installation

### Prerequisites
```bash
# Required
- Python 3.8+
- Node.js 18+
- Docker (for PentAGI)
```

### Install Everything
```bash
# Clone
git clone https://github.com/animeprints/ai-company.git ~/ai-company

# Or just download files
cd ~ && mkdir ai-company && cd ai-company
curl -sOL https://raw.githubusercontent.com/animeprints/ai-company/main/ai-ecosystem-strategic-report.md
```

### Setup PentAGI (Cybersecurity)
```bash
# Requires Docker + OpenAI/Anthropic API key
docker pull vxcontrol/pentagi
docker run -d -p 8080:8080 \
  -e OPENAI_API_KEY=sk-... \
  -e PENTAGI_POSTGRES_PASSWORD=securepass \
  vxcontrol/pentagi
# Access at http://localhost:8080
```

---

## 📚 Documentation

### Cybersecurity
- [PentAGI Docs](https://docs.pentagi.com)
- [Metasploit Guide](https://docs.metasploit.com)
- [OWASP Top 10](https://owasp.org/www-project-top-ten/)

### AI Agents
- [LangChain Docs](https://python.langchain.com)
- [CrewAI Docs](https://docs.crewai.com)
- [MCP Specification](https://modelcontextprotocol.io)

### Skills
- [skills.sh](https://skills.sh) - Discover skills
- [mcpindex.net](https://mcpindex.net) - MCP directory

---

## 🎯 Use Cases

### For Startups
```
1. Cybersecurity → PentAGI for automated penetration testing
2. Development → LangChain + MCP for AI-powered coding
3. Marketing → CrewAI + copywriting skills
4. Operations → automation (browser-use, firecrawl)
```

### For Enterprises
```
1. Azure → microsoft-foundry + azure-kubernetes
2. AWS → AWS MCP + Pacu
3. Google → Google ADK + Vertex AI
4. Multi-cloud → LangGraph with any LLM
```

---

## 🤝 Contributing

1. Fork the repo
2. Add your skills/tools
3. Update README
4. Submit PR

---

## 📄 License

MIT License - Build freely!

---

## 🔗 Links

- **Repo**: https://github.com/animeprints/ai-company
- **Skills**: https://skills.sh
- **MCP Registry**: https://mcpindex.net
- **PentAGI**: https://pentagi.com

---

*Built with 🔥 by AI Company Ecosystem*