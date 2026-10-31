# Messages inter-agents

Chaque message doit être un fichier JSON séparé, horodaté UTC, avec :
`message_id`, `parent_message_id`, `timestamp`, `from_agent`, `to_agent`, `mission_id`, `type`, `subject`, `body`, `evidence`, `status`.

Ne pas fabriquer de messages ou de conversations. Un échange n'est réel que si l'agent destinataire l'a effectivement écrit.
