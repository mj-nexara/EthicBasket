# 🪙 EthicTokens — Verified Value for Sovereign Wellness

**EthicTokens** are traceable units of ethical value exchange used to redeem products, invoke actions, and trigger integrity audits across EthicBasket's supply and recovery chains.

Each token is:
- 🌐 Ledger-traceable
- 🧬 Ethically sourced
- 👥 Role-sensitive (Validator, Subscriber, Supplier)

---

## 🔗 Key Token Types

| Token Type     | Usage Scope               | Role Requirements      |
|----------------|---------------------------|------------------------|
| EBT-VITAL      | Redeem `Recovery Essence` | Subscriber or Higher   |
| EBT-TRACE      | Audit supply trails       | Validator Role Required|
| EBT-FARM       | Supplier claim credits    | Verified Supplier Only |

Tokens are generated and managed via `nexascend-controller.py` using role-sensitive invocation payloads.

---

## 🧪 Sample Redemption Payload (`ethictokens-redeem.json`)

```
{
  "token_type": "EBT-VITAL",
  "actor": "subscriber",
  "lumid_token": "SUB-TKN-8042",
  "product": "leaf-powder-mix",
  "action": "redeem",
  "timestamp": "2025-07-26T06:58:00Z"
}
```

CLI Invocation:
```
python nexascend-controller.py --invoke payloads/ethictokens-redeem.json
```

---

## 🛡️ Token Provenance Assurance

EthicTokens comply with the **Verified Value Ledger (VVL)** protocol:

- ⛓️ Origin-bound token minting
- 📃 Redemption logs stored per subscriber
- 🔐 Role authentication with LumID
- 🎯 Usage integrity checks via CLI flags (`--verify-token`, `--role-check`)

---

## 🧑‍💻 Developer Notes & Integration

- Token schemas are defined in `/vital-assets/ethictokens/schema/`
- Redemption and audit logs written to `/vital-assets/ethictokens/ledger/`
- Integrated with refund and trust-score systems

---

> EthicTokens don’t just transact — they affirm alignment. Every invocation tells a story of principled intent.


---
