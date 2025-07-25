# 🌐 API Endpoints — EthicBasket Invocation Interfaces

This API reference enables authenticated access to EthicBasket modules across products, observability, governance, and user-triggered invocation flows.

---

## 🔐 Authentication Header Format

All endpoints require bearer tokens issued via LumID.

```
Authorization: Bearer <LUMID_TOKEN>
```

---

## 🧺 Product Catalogue APIs

### 🔍 GET `/api/products`
Retrieve full product registry segmented by type.

```
GET /api/products?category=vital-assets
```

Returns: JSON list of products (includes slug, price, summary)

---

### 📦 GET `/api/product/:id`
Fetch detailed metadata for specific product by ID.

```
GET /api/product/vital-assets/honey
```

Returns:
```
{
  "name": "Organic Honey",
  "type": "vital-assets",
  "origin": "Sundarbans",
  "description": "Cold-extracted, ethically sourced",
  "ledgerStatus": "traceable"
}
```

---

## 💸 Commission & Referral APIs

### 🧾 GET `/api/commission/:userId`
Fetch earned commissions for a given LumID user.

```
GET /api/commission/mj-nexara
```

Returns: JSON summary of earned tokens per referral source

---

### 🔗 POST `/api/referral/register`
Register a referral event between two actors.

Payload:
```
{
  "referrer": "mj-nexara",
  "newUser": "node42",
  "product": "nexascend-cli"
}
```

Response: referral node ID

---

## 🔍 Observability & Audit APIs

### 🧮 GET `/api/invocation/:txid`
Query ledger data for a specific invocation transaction.

```
GET /api/invocation/EB-COM-001
```

Returns audit log with timestamp, source, status

---

### ⚖️ POST `/api/governance/validate-policy`
Trigger a policy match evaluation before invoking a refund or voting module.

Payload:
```
{
  "actor": "node42",
  "module": "constitution-kit",
  "policy": "refund-eligibility-verdict"
}
```

Response: policyMatch: true | false

---

## 📦 Subscription APIs

### 🧬 GET `/api/subscriptions/:userId`
Returns active subscriptions per user node with trace status.

---

### 🔄 POST `/api/subscribe`
Initiate a new subscription to a product block.

Payload:
```
{
  "user": "node42",
  "product": "mkdocs-theme-bundle",
  "tier": "pro"
}
```

---

## 🧑‍💻 Developer Access Notes

- CORS: enabled for `*.nexara.dev` origins
- Rate limit: 3000 req/day per token
- Response format: always JSON
- Error codes aligned with NexaraGov standards (`403-GOV-REFUSE`, `501-NON_INVOCABLE`, etc.)

---

> These APIs are the gateways to sovereign commerce. Invoke responsibly, trace transparently.

---

