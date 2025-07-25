## 📣 `observability/campaigns.md`

# 📣 Campaigns — Invocation-Driven Engagement Rollout

EthicBasket campaigns are designed to activate ethical outreach, product visibility, and subscriber growth via traceable invocation flows.

---

## 🧠 Campaign Types

- **Product Launch Invocation**  
  → Triggers onboarding sequence across `digital` or `vital-assets`  
- **Referral Activation Event**  
  → Propagates via personalized deep-links and `referral-graph.md`  
- **Governance Education Drive**  
  → Promotes awareness of constitution kits and sovereign tools  
- **EthicToken Release Rituals**  
  → Campaigns triggered via ceremonial drops

---

## 🧮 Campaign Invocation Format

```
nexascend-controller.py --invoke-campaign --campaign-id "EB2025-FTL-01"
```

- Logs stored in `ethicbasket-ledger`
- Invocation results track conversion via graph node updates

---

## 📊 Metrics Dashboard (CLI Extracts)

| Metric               | Source Log          | CLI Invocation                       |
|----------------------|---------------------|--------------------------------------|
| Visitor Impressions  | `campaign-log.json` | `--query-metric impressions`         |
| Invocation Events    | `ledger-events.log` | `--query-metric invocations`         |
| EthicToken Claims    | `token-claims.json` | `--query-metric token-claim-rate`    |

> _Campaigns aren’t ads—they’re sovereign invocations with traceable ethics._


---

## 🧭 `observability/referral-graphs.md`


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

---

## 💡 Referral CLI Queries

```
nexascend-controller.py --referral-graph --user-id mj-nexara
```

- Outputs JSON view of referral branches
- Can visualize with graph tools (e.g., Mermaid.js, G6)

---

## 🎯 Reward Trigger

- Reward issued only if graph lineage verifies ≥ 2 tiers
- Tokenized incentive through `commission-ledger.md`

> _Referral isn’t a gimmick—it’s a sovereign graph invocation._


---

## 🧾 `observability/commission-ledger.md`

---

# 🧾 Commission Ledger — Sovereign-Earning Transparency

Maintain traceable ledgers for commissions earned through campaigns, referrals, and verified invocations.

---

## 🧱 Ledger Entry Format

```
{
  "tx_id": "EB-COM-001",
  "user": "node42",
  "earned": "0.003 ETH",
  "source": "referral",
  "product": "Audio Voiceover Service",
  "timestamp": "2025-07-25T21:01Z"
}
```

---

## 🎲 Earning Rules

| Source Type      | Min Tier | Token Rate     | Quorum Required |
|------------------|----------|----------------|------------------|
| Direct Referral  | 1        | 0.002 ETH      | None             |
| Tier-2 Referral  | 2        | 0.0015 ETH     | EthicVote        |
| Campaign Bonus   | NA       | Variable       | NexaraGov Node   |

---

## 🔍 Commission Queries

```
nexascend-controller.py --commission-report --user node42
```

- Fetches individual earnings ledger
- Filter by source type or timeframe

---

> _The commission ledger is proof of integrity—earned ethically, invoked transparently._


---

