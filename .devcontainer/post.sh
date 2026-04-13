#!/usr/bin/env bash
set -euo pipefail


echo "## Node.js"

node -v
npm  -v


echo "## Claude Code"

curl -fsSL https://claude.ai/install.sh | bash
export PATH="$HOME/.local/bin:$PATH"

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc || true

claude --version || true


echo "## Playwright CLI"

npm install -g @playwright/cli@latest
playwright-cli --help

npx playwright install --with-deps chromium


echo "done"
