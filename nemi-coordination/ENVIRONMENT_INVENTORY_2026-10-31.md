# Inventaire NEMI — 31 octobre 2026

| Élément | Statut | Preuve / limite |
|---|---|---|
| Windows 11 Pro | Déclaré par Steve | Pas d'accès local depuis ce cycle cloud |
| VS Code / Vocal Code | Déclaré par Steve | Non détecté localement |
| Ubuntu WSL + Hyper-V | Déclaré par Steve ; Ubuntu dans les deux environnements confirmé dans un échange antérieur | WSL2 avait été bloqué par AMD-V/SVM ; BIOS HP signalé activé ensuite, état final non vérifié |
| Git Windows + Linux | Déclaré ; Git et PowerShell apparaissaient dans un ancien inventaire | Pas de test local actuel |
| RAM 8 Go | Contexte antérieur | Éviter plusieurs modèles locaux ou environnements lourds simultanément |
| Codex | Déclaré installé et déjà utilisé | Session locale non accessible |
| Kilo Code | Déclaré installé | Session locale non accessible |
| OpenCode | Déclaré installé ; version 1.19.5 signalée dans un rapport antérieur | Non revalidé |
| Gemini | Déclaré installé/configuré ; `google/gemini-3.1-flash-lite` PONG signalé depuis Kilo terminal | Smoke test antérieur, pas preuve d'une session Gemini CLI indépendante |
| GitHub | Connecté dans ChatGPT | Seul dépôt NEMI visible : `NemiStudioDigital/NemiStudioDigital-site` |
| Bibliothèque NEMI | Accessible | Rapports, CRM, stratégie, opportunités et recherche technique consultés |
| `nemi_ai.db`, `nemi_innovation.db` | Mentionnés dans un rapport antérieur | Non inspectés dans ce cycle |
| Worktree `nemi-recherche-creative` | Mentionné dans un rapport antérieur | Inventaire ancien et limité à ce worktree ; Node/npm/Python/FFmpeg/ImageMagick absents du PATH à la date du relevé |

Ne pas demander de réinstaller les outils. La prochaine vérification doit lire les versions et les configurations existantes sur la machine de Steve, sans afficher les secrets.
