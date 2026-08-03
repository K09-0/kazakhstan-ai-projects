#!/bin/bash
# ═══════════════════════════════════════════════════════════════════
#  Deploy Script for 9 AI Telegram Bots
#  Kaspi Pay: +7 701 789 18 57
# ═══════════════════════════════════════════════════════════════════

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}══════════════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  9 AI Telegram Bots — Deployment Script${NC}"
echo -e "${BLUE}══════════════════════════════════════════════════════════════${NC}"

# ── Check Docker ─────────────────────────────────────────────────
echo -e "\n${YELLOW}▶ Checking Docker...${NC}"
if ! command -v docker &> /dev/null; then
    echo -e "${RED}✗ Docker not found. Install Docker first:${NC}"
    echo "  curl -fsSL https://get.docker.com | sh"
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    echo -e "${RED}✗ docker-compose not found. Installing...${NC}"
    pip install docker-compose 2>/dev/null || {
        echo "  sudo apt install docker-compose-plugin"
        exit 1
    }
fi

echo -e "${GREEN}✓ Docker OK${NC}"

# ── Check .env files ─────────────────────────────────────────────
echo -e "\n${YELLOW}▶ Checking .env files...${NC}"
BOTS=("asyqverse" "koremin" "tenderbot" "kazcontent" "neuroprep" "neurojurist" "smartasp" "repairbot" "chatseller")
MISSING=0

for bot in "${BOTS[@]}"; do
    ENV_FILE="./${bot}/.env"
    if [ ! -f "$ENV_FILE" ]; then
        echo -e "${RED}✗ ${bot}/.env missing${NC}"
        MISSING=$((MISSING + 1))
    elif ! grep -q "BOT_TOKEN=" "$ENV_FILE" 2>/dev/null; then
        echo -e "${RED}✗ ${bot}/.env has no BOT_TOKEN${NC}"
        MISSING=$((MISSING + 1))
    else
        TOKEN=$(grep "BOT_TOKEN=" "$ENV_FILE" | cut -d'=' -f2 | head -c 20)
        echo -e "${GREEN}✓ ${bot:0:12}${NC} | TOKEN: ${TOKEN}..."
    fi
done

if [ $MISSING -gt 0 ]; then
    echo -e "\n${RED}⚠ $MISSING bot(s) missing configuration!${NC}"
    echo "  Copy .env.example to .env and set BOT_TOKEN"
    exit 1
fi

# ── Build images ─────────────────────────────────────────────────
echo -e "\n${YELLOW}▶ Building Docker images...${NC}"
docker-compose build --parallel

# ── Start containers ─────────────────────────────────────────────
echo -e "\n${YELLOW}▶ Starting containers...${NC}"
docker-compose up -d

# ── Wait and check ───────────────────────────────────────────────
echo -e "\n${YELLOW}▶ Waiting for bots to start (10s)...${NC}"
sleep 10

# ── Show status ──────────────────────────────────────────────────
echo -e "\n${YELLOW}▶ Container status:${NC}"
docker-compose ps

# ── Show logs ────────────────────────────────────────────────────
echo -e "\n${YELLOW}▶ Recent logs (last 5 lines per bot):${NC}"
docker-compose logs --tail=5

echo -e "\n${GREEN}══════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}  Deployment complete!${NC}"
echo -e "${GREEN}══════════════════════════════════════════════════════════════${NC}"
echo -e "\nUseful commands:"
echo "  docker-compose logs -f [bot-name]  — Follow logs"
echo "  docker-compose ps                   — Show status"
echo "  docker-compose restart [bot-name]  — Restart bot"
echo "  docker-compose down                 — Stop all bots"
echo ""
echo -e "Kaspi Pay: ${YELLOW}+7 701 789 18 57${NC}"
