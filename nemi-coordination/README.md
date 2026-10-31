# NEMI — coordination inter-IA (bootstrap)

Statut : protocole de coordination préparatoire, pas un bus MCP opérationnel.

## But
Fournir un espace commun et auditable où les agents NEMI peuvent déposer des missions, réponses, preuves et décisions. Chaque agent doit lire la file avant de travailler et publier un résultat après chaque étape.

## Cycle
1. Lire `inbox/queue.json` et prendre une mission non attribuée.
2. Créer un message dans `messages/` avec un identifiant unique, auteur, destinataire, horodatage UTC, mission, demande, contexte et contraintes.
3. Répondre dans un nouveau fichier de `messages/` en citant le message parent.
4. Déposer preuves, sources, fichiers modifiés, tests et statut dans `reports/`.
5. Mettre à jour la mission dans `inbox/queue.json`.
6. En cas de blocage, publier un message de type `handoff_request` à un autre agent et préciser les tentatives déjà effectuées.

## Statuts obligatoires
`proposed`, `queued`, `in_progress`, `blocked`, `simulated`, `unit_tested`, `integration_tested`, `verified_real`, `awaiting_steve`, `done`.

Ne jamais présenter une simulation comme un échange réel. Ne jamais inventer une réponse d'un autre agent.

## Règles de gouvernance
Steve est le décideur final et conserve seul le contrôle des finances, dépenses, abonnements, réinvestissements, engagements, publication publique et déploiements. Les agents peuvent rechercher, proposer, prototyper et tester en environnement isolé sans frais ni action irréversible.

## Limite actuelle
Ce dépôt est un espace de messages versionné, pas une messagerie temps réel. Le relais automatique nécessite que Kilo/Codex soient configurés pour lire et écrire ici, ou qu'un serveur MCP partagé soit raccordé. Aucun accès Kilo n'est accordé par ce dépôt à lui seul.
