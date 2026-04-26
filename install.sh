#!/bin/bash
# AI Company Ecosystem Installer - Single Command Setup
# Run: curl -sSL https://raw.githubusercontent.com/YOUR_REPO/install.sh | bash

set -e

echo "🛠️  Setting up AI Company Ecosystem..."

# Create directory
mkdir -p ~/ai-company/{skills,tools,Reports}
cd ~/ai-company

# Download strategic report (assuming it's hosted)
# echo "📄 Fetching strategic report..."

# Install core CLI tools
echo "📦 Installing MCP & agent tools..."

# Node.js based (for MCP)
if ! command -v node &> /dev/null; then
    echo "Node.js not found - install from nodejs.org"
fi

# Python based
if ! command -v python3 &> /dev/null; then
    echo "Python3 not found - install python3"
fi

# Install key npm skills globally
npm install -g skills-cli 2>/dev/null || npm install -g @anthropic-ai/claude-code-sdk 2>/dev/null || true

# Install key Python packages
pip3 install mcp-agent langchain crewai 2>/dev/null || pip install mcp-agent langchain crewai 2>/dev/null || true

# Pull PentAGI Docker
echo "🔐 Setting up PentAGI..."
if command -v docker &> /dev/null; then
    docker pull vxcontrol/pentagi 2>/dev/null || echo "Run: docker pull vxcontrol/pentagi"
fi

# Create alias file
cat > ~/.ai-company-aliases << 'EOF'
# AI Company Quick Commands
alias ai-company='cd ~/ai-company'
alias pentagi='docker run -d -p 8080:8080 vxcontrol/pentagi'
alias mcp-list='find ~/.mcp -name "server.py" -o -name "server.js" 2>/dev/null'
EOF

echo "✅ AI Company Ecosystem Ready!"
echo ""
echo "Quick Commands:"
echo "  ai-company        # Go to workspace"
echo "  pentagi         # Start PentAGI (requires Docker)"
echo "  source ~/.ai-company-aliases  # Load aliases"
echo ""
echo "Reports: ~/ai-company/Reports/"