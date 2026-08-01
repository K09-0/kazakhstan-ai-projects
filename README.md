# 🤖 Kazakhstan AI Projects

**9 AI-powered Telegram bots & web projects for Kazakhstan market**

> 🇰🇿 Made in Kazakhstan | ~36,400 lines of code | Potential: ~42,500 KZT/month

---

## 🎨 Bot Avatars

| AsyqVerse | Koremin | TenderBot KZ |
|:---:|:---:|:---:|
| <img src="avatars/asyqverse_avatar.png" width="100"> | <img src="avatars/koremin_avatar.png" width="100"> | <img src="avatars/tenderbot_avatar.png" width="100"> |
| **KazContent AI** | **NeuroPrep ENT** | **NeuroJurist** |
| <img src="avatars/kazcontent_avatar.png" width="100"> | <img src="avatars/neuroprep_avatar.png" width="100"> | <img src="avatars/neurojurist_avatar.png" width="100"> |
| **Smart ASP** | **RepairBot** | **ChatSeller** |
| <img src="avatars/smartasp_avatar.png" width="100"> | <img src="avatars/repairbot_avatar.png" width="100"> | <img src="avatars/chatseller_avatar.png" width="100"> |

---

## 📋 Projects Overview

| # | Project | Description | Monetization | Lines | Status |
|---|---------|-------------|-------------|-------|--------|
| 1 | **AsyqVerse** | AR game + NFT with Kazakh asyk bones | NFT + 3D prizes | 1,609 | ✅ Token set |
| 2 | **Koremin** | Tactile Braille navigation for blind | 3M KZT grant | ~3,000 | ✅ Token set |
| 3 | **TenderBot KZ** | Gov procurement parser + AI analysis | 15,000 KZT/mo | 10,032 | 📝 Need token |
| 4 | **KazContent AI** | Neuro-SMM for artisans | 5,000 KZT/mo | 2,862 | 📝 Need token |
| 5 | **NeuroPrep ENT** | AI tutor for university entrance exam | 7,000 KZT/mo | 3,500+ | 📝 Need token |
| 6 | **NeuroJurist** | Rental contract analyzer | 2,000 KZT/analysis | 3,114 | 📝 Need token |
| 7 | **Smart ASP** | Social benefits consultant | 500 KZT/consult | 4,600 | 📝 Need token |
| 8 | **RepairBot** | Home repair assistant | 3,000 KZT/mo | 3,355 | 📝 Need token |
| 9 | **ChatSeller** | Instagram Direct auto-seller | 10,000 KZT/mo | 4,307 | 📝 Need token |

---

## 🔑 Bot Tokens Status

### ✅ Tokens Received & Set:
- **AsyqVerse**: `8841126574:AAE8Tj2Wiudi4GM-mGSwivtWKEmaYScaNdY`
- **Koremin**: `8973400460:AAEC3ld9kVT_RwPXuyRtiEQTgikLUvzBT0U`

### 📝 Need Tokens from [@BotFather](https://t.me/BotFather):
| Project | Config Location |
|---------|----------------|
| TenderBot KZ | `03-tenderbot/bot/config.py` |
| KazContent AI | `04-kazcontent/bot/config.py` |
| NeuroPrep ENT | `05-neuroprep/bot/config.py` |
| NeuroJurist | `06-neurojurist/bot/config.py` |
| Smart ASP | `07-smartasp/bot/config.py` |
| RepairBot | `08-repairbot/bot/config.py` |
| ChatSeller | `09-chatseller/bot/config.py` |

---

## 🚀 Quick Start

```bash
# Clone
git clone https://github.com/K09-0/kazakhstan-ai-projects.git
cd kazakhstan-ai-projects

# Install any bot
cd 01-asyqverse
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp .env.example .env  # Edit: add BOT_TOKEN
python bot.py
```

### VPS Auto-Deploy:
```bash
chmod +x deploy_bots.sh
./deploy_bots.sh
sudo systemctl start asyqverse-bot
sudo systemctl start koremin-bot
```

---

## 📁 Repository Structure

```
kazakhstan-ai-projects/
├── avatars/                    # 9 bot avatar PNGs
├── 01-asyqverse/               # AR asyk game bot
│   ├── bot.py
│   ├── web/
│   └── assets/
├── 02-koremin/                 # Braille navigation bot
│   ├── bot/
│   ├── web/
│   ├── generator/
│   └── assets/
├── 03-tenderbot/               # Gov procurement AI
│   ├── bot/
│   ├── parser/
│   ├── ai/
│   └── web/
├── 04-kazcontent/              # SMM for artisans
│   ├── bot/
│   └── web/
├── 05-neuroprep/               # ENT exam tutor
│   ├── bot/
│   ├── data/
│   └── web/
├── 06-neurojurist/             # Contract analyzer
│   ├── bot/
│   └── web/
├── 07-smartasp/                # Social benefits
│   ├── bot/
│   ├── data/
│   └── web/
├── 08-repairbot/               # Home repair
│   ├── bot/
│   └── web/
├── 09-chatseller/              # Instagram seller
│   ├── bot/
│   └── web/
├── deploy_bots.sh              # VPS deploy script
└── README.md                   # This file
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|-----------|---------|
| Python 3.11+ | Core language |
| aiogram 3.x | Telegram Bot API |
| SQLite | Database |
| OpenAI GPT-4o | AI analysis & generation |
| HTML5/CSS3/JS | Landing pages |
| Pydantic | Data validation |
| SQLAlchemy | ORM |
| aiohttp | Async HTTP |

---

## ⚡ What's Included in Each Project

### 1. AsyqVerse — AR Asyk Game
- 20 types of asyk bones with rarity system
- `/start`, `/scan`, `/korzhyn`, `/leaderboard`, `/prizes`, `/daily`
- SQLite: users, collections, history
- 5 ranks: Novice → Collector → Expert → Master → Khan
- 6 redeemable 3D-printed prizes

### 2. Koremin — Braille Navigation
- FSM order form for tactile signs
- `/about`, `/order`, `/contacts`, `/support`, `/qr`, `/stats`
- QR code generator for voice descriptions
- Statistics tracking

### 3. TenderBot KZ — Gov Procurement
- Parser for goszakup.gov.kz API
- 8 risk analysis types
- Bid generator with scoring algorithm
- 3-tier subscriptions: Free / Basic / Pro

### 4. KazContent AI — SMM for Artisans
- Photo analysis via GPT-4o Vision
- Post, Reels script, Stories, marketplace description generation
- 4 tone options: warm, professional, humorous, inspirational
- Weekly publication planner

### 5. NeuroPrep ENT — Exam Tutor
- 504 questions across 10 subjects
- Diagnostic test + personalized plan
- Weak topic heatmap
- Score prediction algorithm

### 6. NeuroJurist — Contract Analyzer
- 14 contract risk checks
- Document templates (acceptance act, receipt, contract)
- Safety score 0-10

### 7. Smart ASP — Benefits Consultant
- 12 types of Kazakhstan social benefits
- FSM consultation tree (6 categories)
- Benefit calculator
- Complaint generator

### 8. RepairBot — Home Repair
- 54 repair problems across 6 categories
- Step-by-step guides with tool lists
- Shopping lists with KZT prices
- Safety warnings

### 9. ChatSeller — Instagram Auto-Seller
- 6 business category templates
- AI dialog engine with sales push
- FAQ auto-responses
- Order collection system

---

## 📜 License

MIT License — free to use, modify, and deploy.

---

<p align="center">
  Made with ❤️ in Kazakhstan 🇰🇿<br>
  <b>9 projects | 36,400+ lines | 1 mission: help Kazakhstan with AI</b>
</p>
