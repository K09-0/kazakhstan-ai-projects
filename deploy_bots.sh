#!/bin/bash
# Auto-deploy script for all 9 bots
# Usage: chmod +x deploy_bots.sh && ./deploy_bots.sh

set -e
PROJECT_DIR="$HOME/tg-bots"
mkdir -p "$PROJECT_DIR"

echo "========================================"
echo "  Deploy: Kazakhstan AI Projects"
echo "========================================"

# Install deps
pip install aiogram aiohttp python-dotenv pillow qrcode aiosqlite

echo "All 9 bots are in their respective folders."
echo "Set BOT_TOKEN in each .env file, then run:"
echo "  python bot.py"
