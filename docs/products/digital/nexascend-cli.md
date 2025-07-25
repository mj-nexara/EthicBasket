# ⚙️ NexAscend CLI — Modular Invocation Controller

**NexAscend CLI** is a sovereign-grade command-line tool that powers decentralized invocations, automation workflows, and governance triggers across the EthicBasket ecosystem.

Built with Python, it enables verified execution of JSON payloads, subscription calls, refund triggers, and observability events.

---

## 🚀 Core Capabilities

- 🔐 Role-based invocation (via LumID verification)
- 🧩 Modular task execution using JSON schemas
- 🛠️ Integration with NexaraGov policies
- 📦 Subscription, product access, and trace logging
- 🧮 CLI triggers for campaigns, referrals, commissions

---

## 🧪 Sample Invocation Command

```
python nexascend-controller.py --invoke payloads/refund-trigger.json
```

✅ This command initiates a refund request for a valid subscriber based on role and ledger verification.

---

## 📁 File Structure

```
nexascend-cli/
├── nexascend-controller.py
├── payloads/
│   ├── campaign.json
│   ├── subscription.json
│   └── refund-trigger.json
├── docs/
│   ├── schema-examples.md
│   └── trace-logs.md
```

---

## 🔍 Schema Example (`subscription.json`)

```
{
  "actor": "subscriber",
  "product": "mkdocs-theme-bundle",
  "tier": "pro",
  "timestamp": "2025-07-30T14:22:00Z",
  "lumid_token": "SUB-TKN-3911",
  "action": "init-subscription"
}
```

---

## 🛡️ Invocation Integrity Checklist

| Checkpoint        | Status   |
|-------------------|----------|
| LumID verification| ✅ Passed |
| Role mapping      | ✅ Matched |
| Token expiry      | ✅ Valid  |
| JSON schema       | ✅ Verified |
| Policy compliance | ✅ Confirmed |

---

## 🧑‍💻 Developer Notes

- Requires Python 3.9+
- All payloads must follow the `invoke-schema-v2`
- CLI supports logging via `--verbose` and JSON outputs via `--json`

---

> NexAscend CLI isn't just a utility — it's an ethical engine of sovereign action. Invoke with clarity, trace with trust.


---

