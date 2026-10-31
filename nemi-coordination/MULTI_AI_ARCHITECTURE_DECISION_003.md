# Décision d'architecture NEMI — comité multi-IA

## Correction importante sur Kilo Swarm

Kilo Swarm ne constitue pas une messagerie universelle entre toutes les sessions : il est limité à une session principale et à ses descendants `task`. Il ne démarre, n'assigne, ne réveille ni ne reprend les agents. Les sessions Agent Manager indépendantes ont leurs propres transcriptions et files de prompts. Elles peuvent être ciblées individuellement par l'outil `agent_manager`; les worktrees distincts échangent les changements par commits, diffs ou PR.

## Phase 1 — comité local Kilo

1. Ouvrir le dépôt principal dans VS Code (pas un worktree isolé comme racine).
2. Ouvrir Agent Manager (`Ctrl+Shift+M`).
3. Inventorier les modèles réellement disponibles avec l'outil de découverte de modèles Kilo.
4. Créer des sessions indépendantes avec un fournisseur/modèle explicite par session.
5. Envoyer le même brief à chaque session sans partager les réponses au premier tour.
6. Relayer ensuite les propositions entre sessions pour critique croisée.
7. Envoyer un deuxième tour de réponses aux objections.
8. Enregistrer transcriptions, modèles, IDs de session, dates, sources et coûts.

## Phase 2 — mémoire et bus communs

- SQLite Core 0.2 comme stockage local persistant.
- Serveur MCP authentifié comme frontière d'accès.
- Outils MCP minimum : `list_missions`, `claim_mission`, `checkpoint`, `complete_mission`, `block_mission`, `post_message`, `read_thread`, `append_evidence`, `create_opportunity`, `request_owner_approval`.
- Chaque client (Kilo, OpenCode, Gemini CLI, Codex) reçoit le même chemin de base ou endpoint, mais des identités distinctes.
- Aucun agent ne peut marquer un message comme réel sans preuve d'un appel fournisseur : fournisseur, modèle, session, response ID, horodatage et résultat.
- Les messages simulés restent marqués `simulated=true`.

## Phase 3 — alternatives d'orchestration

- OpenCode : agents primaires et sous-agents, modèle configurable par agent, MCP local/distant. Les sous-agents héritent du modèle du parent si aucune surcharge n'est définie.
- Gemini CLI : MCP via STDIO, SSE et Streamable HTTP ; sous-agents locaux et remote subagents via A2A.
- Codex : MCP dans CLI et extension IDE, avec configuration utilisateur ou projet.

## Garde-fous

- Un seul orchestrateur lourd à la fois, en tenant compte des 8 Go RAM.
- Priorité aux fournisseurs sans coût supplémentaire confirmé.
- Ne pas ajouter de moyen de paiement, activer de pay-as-you-go ou recharger de crédits.
- Ne pas modifier WSL, Hyper-V, les paramètres système ou Google Drive.
- Aucun déploiement, publication, fusion main, prospection ou message externe sans approbation de Steve.
