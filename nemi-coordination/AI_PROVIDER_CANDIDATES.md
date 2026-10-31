# Deux IA supplémentaires à étudier pour le comité NEMI

Date de recherche : 2026-10-31

## Recommandation provisoire : Anthropic Claude et Mistral AI

Ces fournisseurs sont des candidats complémentaires à ChatGPT/OpenAI et Gemini. Ils ne sont pas déclarés connectés à NEMI à ce stade.

### 1. Anthropic Claude
- Atout recherché : troisième regard généraliste indépendant pour la critique stratégique, l'analyse de longs dossiers, la synthèse et la revue de risques.
- Intégration : OpenCode documente un fournisseur Anthropic natif; connexion via `/connect`, sélection Anthropic et authentification API. Les modèles disponibles se choisissent via `/models`.
- Coût : l'accès API nécessite un compte Claude Console et une configuration de facturation; aucun coût ne doit être engagé sans accord explicite de Steve.
- Attention : ne pas contourner les conditions Anthropic en réutilisant un abonnement Claude Pro/Max d'une manière interdite.
- Sources : https://opencode.ai/v2/docs/providers ; https://support.claude.com/en/articles/8114521-how-can-i-access-the-claude-api

### 2. Mistral AI
- Atout recherché : quatrième regard indépendant, alternative européenne, tests de raisonnement, extraction, critique et prototypes d'agents.
- Intégration : OpenCode documente le catalogue de fournisseurs et le fournisseur Mistral; Mistral documente Responses API, function calling et connecteurs MCP.
- Coût : l'API peut être facturée à l'usage; aucun crédit, clé ou paiement ne doit être activé sans accord explicite de Steve.
- Attention : vérifier les modèles disponibles, les tarifs et les capacités exactes avant toute sélection.
- Sources : https://opencode.ai/v2/docs/providers ; https://docs.mistral.ai/api/endpoint/responses ; https://docs.mistral.ai/studio/agents/agent-tools/function-calling

## Pourquoi ces deux-là ?
- Diversité de fournisseurs et d'approches.
- Présence documentée dans le catalogue OpenCode.
- Possibilité d'outillage et de function calling, utile à une orchestration.
- Ajout sans changer le rôle de Gemini ou OpenAI.

## Alternatives à considérer
OpenCode annonce un catalogue étendu incluant aussi DeepSeek, Groq, xAI et OpenRouter. Ils peuvent être comparés plus tard, mais multiplier les fournisseurs augmente les coûts, la complexité et les risques de données. Deux IA supplémentaires suffisent pour commencer.

## Statut
- Recherche documentaire : effectuée.
- Recommandation : Claude + Mistral.
- Présence dans l'environnement local de Steve : non vérifiée.
- Comptes et authentification : non vérifiés.
- Connexion effective : non réalisée.
- Tests croisés : non réalisés.
- Activation : nécessite décision financière de Steve si facturation API.
