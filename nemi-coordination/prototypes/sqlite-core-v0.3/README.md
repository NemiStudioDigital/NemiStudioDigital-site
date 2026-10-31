# NEMI Autoevolution Core 0.3

Archive: `NEMI_Autoevolution_Core_0.3_2026-10-31.zip`

SHA-256: `9a04cd55b0023654ed7298ffe952741d216c0c242e21c44eca7b912d122eaa41`

## Included
- Transactional SQLite mission queue (WAL, BEGIN IMMEDIATE).
- Atomic concurrent mission claims.
- Checkpoints, interrupted-job recovery, relay and escalation.
- Event history with explicit simulated flag.
- MessageJournal with provider/model/runtime/session/response provenance fields, threaded messages, sources, confidence, usage and simulated/unverified status.
- Heuristic rejection of common credential patterns before storing message content.

## Validation
11 local tests passed, 0 failed. Tests ran with ResourceWarning treated as errors. The SQLite demo completed and integrity_check returned ok.

## Strict limits
No ChatGPT, Gemini, Codex, OpenCode, Kilo, Mistral, Groq or Claude provider is connected. No real inter-AI message was received. Non-simulated messages remain unverified until a trusted provider adapter is implemented. No MCP server, network authentication, cryptographic provenance, secrets vault or production security exists. Do not store secrets, customer data or personal data. Not production-ready.
