# 🧭 Referral Graphs — Distributed Node Propagation

Track referral propagation through decentralized graph structures. Referral chains empower transparent incentivization and lineage mapping.

---

## 🔗 Graph Node Structure

- Each referrer is a vertex in the invocation graph
- Referred users form directed edges
- Nodes store referral timestamp, product type, and reward status

---

## 📐 Graph Snapshot Example

```
{
  "referrer_id": "mj-nexara",
  "referrals": [
    {
      "user_id": "node42",
      "product": "LifeFuel",
      "timestamp": "2025-07-21T14:22Z"
    }
  ]
}
```