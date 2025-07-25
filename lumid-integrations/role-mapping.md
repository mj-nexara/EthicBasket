# 🧬 LumID Role Mapping — Sovereign Actor Classification

This document outlines the actor roles within EthicBasket, their privileges, identity validation logic, and invocation scopes under LumID-based authentication.

---

## 🧑‍💼 Actor Roles Overview

| Role ID   | Description                                     | Verified via LumID? | Invocation Scope                    |
|-----------|-------------------------------------------------|----------------------|-------------------------------------|
| `seller`  | Product creator or provider                     | ✅ Yes               | Product listing, stock, pricing    |
| `subscriber` | Recurring user of digital/vital modules     | ✅ Yes               | Subscription, renewal, download    |
| `affiliate` | Referral generator, earns commission          | ✅ Yes               | Referral tracking, campaign invoke |
| `observer` | Passive auditor or monitor node                | Optional             | Log visibility, product views      |
| `governor` | Policy enforcer via NexaraGov link             | ✅ Yes               | Refund approval, vote quorum       |
| `invoker`  | Invokes high-level actions (CLI/API level)     | ✅ Enforced          | Product trigger, ledger submission |

---

## 🔐 LumID Token Requirements

- **seller** → Requires `lum-token-sell` + KYC verification
- **subscriber** → Must have active subscription ID + tier
- **affiliate** → LumID `referral-sig` signed from upstream node
- **governor** → Requires `gov-token-quorum` + EthicVote match
- **invoker** → Must invoke via NexAscend signed payload

---

## 🎯 Invocation Scopes by Role

### 🧰 Seller Invocation
```
{
  "action": "update-product",
  "verifiedBy": "lumid-node-core",
  "actor": "seller",
  "signature": "SELL-LUM-TKN-721x"
}
```

### 📦 Subscriber Invocation
```
{
  "action": "access-content",
  "productTier": "pro",
  "lumidToken": "SUB-TKN-443x"
}
```

### 🔗 Referral Trigger (Affiliate)
```
{
  "referrer": "affiliate-node42",
  "referralHash": "RFX-2025-09",
  "linkedProduct": "mkdocs-theme"
}
```

---

## 🧑‍⚖️ Governance Role Mapping

| Action               | Required Role | LumID Token           | Invokable? |
|----------------------|---------------|------------------------|------------|
| Refund Approval      | `governor`    | `gov-token-quorum`     | ✅ Yes     |
| Ledger Rejection     | `observer`    | None / soft-auth       | ✅ Limited |
| Policy Injection     | `invoker`     | `lumid-core-signed`    | ✅ Full    |

---

## 🧪 Example Role Invocation Trace (JSON Entry)

```
{
  "actor": "affiliate",
  "lumid": {
    "identity": "mj-nexara",
    "token": "AFF-TKN-9821",
    "referralMap": ["node001", "node002"]
  },
  "invokedAction": "trigger-campaign",
  "timestamp": "2025-07-30T14:09:00Z"
}
```

---

## 📎 Integration Notes

- LumID tokens must be cryptographically signed and time-bound
- Failed role validation returns code: `403-LUMID-ROLE-MISMATCH`
- Role expansion possible via `ethicsync-registry.json`

---

> Sovereign identity is not just a name — it’s the invocation passport to purpose.


---
