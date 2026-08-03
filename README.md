# 9 AI Telegram Bots for Kazakhstan

**9 AI-powered Telegram bots for Kazakhstan market with Docker deployment and Kaspi Pay integration**

> 🇰🇿 Made in Kazakhstan | 84 Python files | 10,000+ lines of bot code | Docker-ready

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

| # | Bot | Description | Monetization | Status |
|---|-----|-------------|-------------|--------|
| 1 | **AsyqVerse** | AR Asyk game with rankings & prizes | Donations | ✅ Ready |
| 2 | **Koremin** | Tactile Braille navigation for blind | 400 KZT/sign | ✅ Ready |
| 3 | **TenderBot KZ** | Gov procurement parser + AI analysis | 5K-15K KZT/mo | ✅ Ready |
| 4 | **KazContent AI** | Neuro-SMM content generator for artisans | 5K KZT/mo Pro | ✅ Ready |
| 5 | **NeuroPrep ENT** | AI tutor for university entrance exam | Pro subscription | ✅ Ready |
| 6 | **NeuroJurist** | Rental contract AI analyzer | 2K KZT/analysis | ✅ Ready |
| 7 | **Smart ASP** | Social benefits consultant | 500 KZT/consult | ✅ Ready |
| 8 | **RepairBot** | Home repair assistant with AI guides | 3K KZT/mo Pro | ✅ Ready |
| 9 | **ChatSeller** | Instagram Direct AI auto-seller | 10K KZT/mo | ✅ Ready |

---

## 🚀 Quick Start

```bash
# Deploy all 9 bots with one command
chmod +x deploy.sh
./deploy.sh

# Or manually:
docker-compose build --parallel
docker-compose up -d
```

---

## 💳 Kaspi Pay Integration

All 9 bots use unified Kaspi Pay system:

- **Phone**: +7 701 789 18 57
- **Method**: Kaspi transfer with unique payment code
- **Admin commands**: `/payments` (list pending), `/revenue` (stats)
- **Auto-activation**: Subscription activates after admin confirmation

### Payment Flow
1. User selects plan → bot generates Kaspi Pay link
2. User pays via Kaspi app → clicks "I paid"
3. Admin receives notification → checks Kaspi app → clicks "Confirm"
4. Subscription auto-activates, user gets notification

---

## 📁 Repository Structure

```
.
├── docker-compose.yml      # 9 Docker services
├── Dockerfile.base         # Base Python 3.11 image
├── deploy.sh               # One-click deployment
├── shared/
│   └── kaspi_payment/      # Unified Kaspi Pay module
│       ├── __init__.py
│       ├── core.py         # Payment links, tracking
│       ├── models.py       # SQLAlchemy DB models
│       └── bot_integration.py  # Aiogram handlers
├── asyqverse/              # 1. AR Asyk Game Bot
├── koremin/                # 2. Braille Navigation
├── tenderbot/              # 3. Gov Procurement AI
├── kazcontent/             # 4. SMM for Artisans
├── neuroprep/              # 5. Exam Tutor (ENT)
├── neurojurist/            # 6. Contract Analyzer
├── smartasp/               # 7. Social Benefits
├── repairbot/               # 8. Home Repair
└── chatseller/             # 9. Instagram AI Seller
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|-----------|---------|
| Python 3.11+ | Core language |
| aiogram 3.x | Telegram Bot Framework |
| Docker + Compose | Containerization |
| SQLite | Per-bot database |
| SQLAlchemy | ORM for Kaspi payments |
| Kaspi Pay | Payment processing |
| OpenAI GPT-4o | AI analysis & generation |

---

## ⚡ What's Included in Each Bot

### 1. AsyqVerse — AR Asyk Game
- 20 types of asyk bones with rarity system
- `/start`, `/scan`, `/korzhyn`, `/leaderboard`, `/prizes`, `/daily`
- 5 ranks: Novice → Collector → Expert → Master → Khan
- 6 redeemable 3D-printed prizes
- Kaspi Pay for donations

### 2. Koremin — Braille Navigation
- FSM order form for tactile Braille signs (400 KZT each)
- `/about`, `/order`, `/contacts`, `/support`, `/qr`, `/stats`
- QR code generator for voice descriptions
- Admin dashboard with statistics
- Kaspi Pay integration for orders

### 3. TenderBot KZ — Gov Procurement
- Parser for goszakup.gov.kz API
- 8 risk analysis types with AI scoring
- Bid generator with algorithmic scoring
- 3-tier subscriptions: Free / Basic (5K) / Pro (15K KZT/mo)
- Kaspi Pay subscription system

### 4. KazContent AI — SMM for Artisans
- Photo analysis via GPT-4o Vision
- Post, Reels script, Stories, marketplace description generation
- 4 tone options: warm, professional, humorous, inspirational
- Weekly publication planner
- Free/Pro tiers with Kaspi Pay

### 5. NeuroPrep ENT — Exam Tutor
- 504 questions across 10 subjects
- Diagnostic test + personalized study plan
- Weak topic heatmap analysis
- Score prediction algorithm
- Marathon mode
- Kaspi Pay for Pro features

### 6. NeuroJurist — Contract Analyzer
- 14-point contract risk analysis
- Document templates (acceptance act, receipt, rental contract)
- Safety score 0-10
- History tracking
- Kaspi Pay per analysis

### 7. Smart ASP — Benefits Consultant
- 12 types of Kazakhstan social benefits
- FSM consultation tree (6 categories)
- Benefit calculator with formulas
- Complaint letter generator
- Kaspi Pay per consultation

### 8. RepairBot — Home Repair
- 54 repair problems across 6 categories
- Step-by-step guides with tool lists
- Shopping lists with KZT prices
- Safety warnings
- AI photo analysis of damage
- Free/Pro with Kaspi Pay

### 9. ChatSeller — Instagram AI Seller
- 6 business category templates
- AI dialog engine with sales push
- FAQ auto-responses
- Order collection system
- Admin panel with stats
- Kaspi Pay subscription

---

## 🔧 Environment Variables

Each bot has `.env` file:

```env
BOT_TOKEN=your_token_from_botfather
ADMIN_IDS=123456789,987654321
OPENAI_API_KEY=sk-...          # For AI bots
KASPI_PHONE=77017891857
```

---

## 📊 Bot Capabilities Matrix

| Feature | Asyq | Kore | Tend | KazC | NeuroP | NeuroJ | Smart | Repair | ChatS |
|---------|:----:|:----:|:----:|:----:|:------:|:------:|:-----:|:------:|:-----:|
| Kaspi Pay | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| AI/GPT-4o | ✅ | ❌ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| FSM Forms | ❌ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Inline KB | ✅ | ✅ | ✅ | ✅ | ✅ | ❌ | ❌ | ✅ | ✅ |
| Photo Upload | ✅ | ✅ | ❌ | ✅ | ❌ | ✅ | ❌ | ✅ | ❌ |
| SQLite DB | ✅ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| Admin Panel | ❌ | ✅ | ✅ | ❌ | ❌ | ✅ | ❌ | ❌ | ✅ |
| Subscription | ❌ | ❌ | ✅ | ✅ | ✅ | ❌ | ❌ | ✅ | ✅ |

---

## ⚠️ Security Notice

**Never commit `.env` files or bot tokens to Git!**

Each project includes `.gitignore`:
```
.env
*.env
__pycache__/
*.db
.venv/
```

---

## 📜 License

Private — All rights reserved.

---

<p align="center">
  Made with ❤️ in Kazakhstan 🇰🇿<br>
  <b>9 bots | 84 Python files | 1 mission: AI for Kazakhstan</b>
</p>
