# Security Policy

## Never Commit Bot Tokens

Bot tokens must NEVER be committed to this repository.

### What to do if tokens were exposed
1. Revoke immediately via [@BotFather](https://t.me/BotFather)
2. Generate new tokens
3. Use only in local `.env` files (ignored by git)

### Correct token handling
```bash
# .env file (add to .gitignore!)
BOT_TOKEN=your_token_here

# In Python
import os
TOKEN = os.getenv("BOT_TOKEN")
```

### .env files are in .gitignore
All projects include `.gitignore` with `.env` listed.
