# 🧭 Dashboard UI — EthicBasket Invocation Surface

This interface spec outlines the GUI zones, event triggers, and module integrations that power the user-facing dashboard for EthicBasket.

---

## 🧩 Layout Zones

| Zone ID        | Purpose                             | Component Type         |
|----------------|--------------------------------------|------------------------|
| `zone-header`  | Identity info + LumID status         | Sticky bar w/ icon map |
| `zone-nav`     | Invocation category toggles          | Tabs / pill buttons    |
| `zone-main`    | Dynamic product and audit cards      | Scrollable grid        |
| `zone-side`    | Referral stats + community triggers  | Mini widgets           |
| `zone-footer`  | Invocation logs & policy anchors     | Sticky console         |

---

## 🚦 UI Event Bindings

### ✅ `onToggleCategory`
Triggered when user changes active product module tab.

### 📤 `onReferralSubmit`
Fires when a referral entry is submitted; POST to `/api/referral/register`

### 🕵️ `onTraceProduct`
Invokes `/api/invocation/:txid` when tracing a product back through the ledger.

---

## 🧑‍🎓 Context Overlays

Used to enrich modules with ledger status, social proof, and governance alignment.

```
{
  "product": "organic-honey",
  "overlay": {
    "ledgerStatus": "traceable",
    "peerVotes": 96,
    "govPolicyMatch": true
  }
}
```

---

## 🧪 Widgets & Cards

- **TraceCard** — Shows audit logs with timestamp + source node.
- **ReferralPulse** — Animated graph showing referral influx trend.
- **SubscriptionMeter** — Bar chart tracking product tier adoption.
- **GovernanceFlag** — Badge that lights up if module matches key policy.

---

## 🎨 Styling Notes

- Theme: `nexascend-light` or `nexascend-dark`
- Font: Mononoki or Inter
- Trace colors: 🔵 active, 🟡 pending, 🔴 revoked
- Tooltip on hover: `alt-meta`, `gov-match`, `ref-score`

---

## 🧑‍💻 Dev Tips

- Use Electron’s IPC channels for secure module invocation
- For mobile UX: enable `bottom-nav` mirror of `zone-nav`
- Cache `GET /api/products` locally for fast grid loading

---

> Sovereign invocation deserves sovereign UX. Design with clarity, empower with trust.


---

