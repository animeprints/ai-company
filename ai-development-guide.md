# 🤖 AI Development Guide

> Complete guide for building AI agents, MCP servers, and AI-powered applications

---

## 🚀 Quick Start

```bash
# Install core AI tools
pip install langchain crewai openai anthropic

# Install MCP
pip install mcp-agent

# Install framework extras
pip install langgraph langchain-community
```

---

## 🧠 AI Agent Frameworks

### Comparison Matrix

| Framework | Best For | Install | Stars |
|-----------|---------|---------|-------|
| **LangGraph** | Complex workflows | `pip install langgraph` | 98K |
| **CrewAI** | Multi-agent teams | `pip install crewai` | 52K |
| **AutoGen** | Microsoft ecosystem | `pip install pyautogen` | 40K |
| **OpenAI SDK** | GPT-only agents | `pip install openai-agents` | 15K |
| **Claude SDK** | Claude + MCP | `pip install claude-agent-sdk` | 10K |

### LangGraph Example

```python
from langgraph.graph import StateGraph
from langgraph.prebuilt import tool_node

def should_continue(state):
    return "end" if state.get("is_done") else "continue"

graph = StateGraph(State)
graph.add_node("agent", agent_node)
graph.add_node("tools", tool_node)
graph.add_edge("__start__", "agent")
graph.add_conditional_edges("agent", should_continue)
graph.add_edge("tools", "agent")
graph.add_edge("agent", "__end__")

app = graph.compile()
```

### CrewAI Example

```python
from crewai import Agent, Task, Crew

researcher = Agent(
    role="Researcher",
    goal="Find info on topic",
    backstory="Expert researcher",
    tools=[search_tool]
)

task = Task(
    description="Research AI trends",
    agent=researcher
)

crew = Crew(agents=[researcher], tasks=[task])
result = crew.kickoff()
```

---

## 🔌 MCP Servers (Model Context Protocol)

### Official Servers (Anthropic)

```bash
# Install via npx
npx @anthropic-ai/mcp-server-filesystem /path/to/allowed
npx @anthropic-ai/mcp-server-github
npx @anthropic-ai/mcp-server-postgres
npx @anthropic-ai/mcp-server-brave-search

# Python-based
pip install mcp-server-fetch
pip install mcp-server-sqlite
```

### Community Servers

| Server | Install | Purpose |
|--------|---------|---------|
| Notion | `npm i -g @notionhq/mcp-server` | Notes/DB |
| Slack | `npm i -g @slackmq/mcp-server` | Messaging |
| Firecrawl | `pip install firecrawl-mcp` | Scraping |
| SQLite | `pip install mcp-server-sqlite` | Database |

### Connect to Claude Desktop

```json
// ~/Library/Application Support/Claude/mcp.json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["@anthropic-ai/mcp-server-filesystem", "/path"]
    }
  }
}
```

---

## 🛠️ Development Stack

### Text Completion

```python
from openai import OpenAI

client = OpenAI(api_key="sk-...")
response = client.chat.completions.create(
    model="gpt-4",
    messages=[{"role": "user", "content": "Hello"}]
)
print(response.choices[0].message.content)
```

### Claude (Anthropic)

```python
import anthropic

client = anthropic.Anthropic(api_key="sk-ant-...")
message = client.messages.create(
    model="claude-3-opus-20240229",
    max_tokens=1024,
    messages=[{"role": "user", "content": "Hello"}]
)
print(message.content[0].text)
```

### Ollama (Local)

```bash
# Install
curl -fsSL https://ollama.com/install.sh | sh

# Run model
ollama run llama3
ollama run mistral

# Python
from langchain.llms import Ollama
llama = Ollama(model="llama3")
```

---

## 📚 RAG (Retrieval-Augmented Generation)

### With LangChain

```python
from langchain_community.document_loaders import TextLoader
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_community.vectorstores import FAISS
from langchain_community.embeddings import HuggingFaceEmbeddings

# Load documents
loader = TextLoader("docs.txt")
docs = loader.load()

# Split
splitter = RecursiveCharacterTextSplitter()
chunks = splitter.split_documents(docs)

# Embed
embeddings = HuggingFaceEmbeddings()
vectorstore = FAISS.from_documents(chunks, embeddings)

# Query
retriever = vectorstore.as_retriever()
relevant = retriever.get_relevant_documents("query")
```

---

## 🧪 Testing AI

```python
# Eval framework
from langchain.evaluation import load_evaluator

evaluator = load_evaluator("qa")
result = evaluator.evaluate(
    prediction="AI response",
    input="Question",
    reference_answer="Expected"
)
```

---

## 📈 Monitoring

| Tool | Purpose |
|------|---------|
| LangSmith | LangChain tracing |
| Humanize | Observability |
| Aim | ML experiment tracking |
| Weights & Biases | MLOps |

---

## 🔗 Resources

- [LangChain Docs](https://python.langchain.com)
- [CrewAI Docs](https://docs.crewai.com)
- [MCP Spec](https://modelcontextprotocol.io)
- [Awesome AI Agents](https://github.com/e2b-dev/awesome-ai-agents)

---

*Last Updated: April 2026*