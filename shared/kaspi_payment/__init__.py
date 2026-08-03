"""
Kaspi Pay Integration Module for Telegram Bots
===============================================

Unified payment system for all 9 bots. Uses Kaspi Pay transfer links
with unique payment codes for manual + automatic verification.

Usage:
    from shared.kaspi_payment import KaspiPayment, PaymentStatus

    kp = KaspiPayment(db_path="data/payments.db", phone="77017891857")
    payment = await kp.create_payment(
        user_id=12345,
        bot_name="koremin",
        amount=5000,
        description="Pro подписка на 1 мес"
    )
    link = payment.pay_link  # URL for user to pay

Environment:
    KASPI_PHONE      — Kaspi phone number (default: 77017891857)
    KASPI_API_KEY    — Kaspi Business API key (optional, for auto-check)
    KASPI_WEBHOOK_URL— Webhook URL for payment notifications
"""

from .core import KaspiPayment, PaymentStatus, Payment
from .models import PaymentModel, init_db
from .bot_integration import KaspiPayHandler, get_payment_keyboard, get_admin_payment_keyboard

__all__ = [
    "KaspiPayment",
    "PaymentStatus",
    "Payment",
    "PaymentModel",
    "init_db",
    "KaspiPayHandler",
    "get_payment_keyboard",
    "get_admin_payment_keyboard",
]
