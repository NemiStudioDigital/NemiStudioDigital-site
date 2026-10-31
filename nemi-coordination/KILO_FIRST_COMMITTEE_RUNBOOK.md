# Premier comité multi-IA NEMI — runbook local Kilo

## Préconditions
- Ouvrir le dépôt principal dans VS Code, pas un worktree déjà isolé.
- Kilo Code est déclaré installé.
- La connexion ChatGPT subscription à Kilo a été confirmée par capture le 31/10/2026.
- L'accès local à Gemini, Mistral et Groq doit être vérifié par modèle et fournisseur.
- Aucun paiement, carte, crédit ou abonnement ne doit être activé.

## Étape 1 — inventorier sans modifier
Dans la session Kilo principale, demander :

> Utilise `agent_manager_models` pour lister les fournisseurs, modèles et niveaux de raisonnement réellement disponibles dans ce compte Kilo. Ne lance aucune requête de modèle supplémentaire. Affiche uniquement les identifiants fournisseur/modèle, la méthode d'authentification (subscription, free tier, BYOK), les limites de coût connues et les modèles indisponibles. Ne révèle aucune clé ni aucun secret. Vérifie que OpenAI est bien la route ChatGPT subscription, pas une clé API pay-as-you-go. Ne modifie aucun réglage et n'ajoute aucun moyen de paiement.

## Étape 2 — créer les sessions indépendantes
- Ouvrir Agent Manager (`Ctrl+Shift+M`).
- Utiliser des sessions isolées en worktree pour éviter les modifications concurrentes.
- Sélectionner explicitement un modèle différent par session, après l'inventaire.
- Priorité : OpenAI ChatGPT subscription, Gemini déjà déclaré, Mistral Free si le modèle est autorisé, Groq Free avec un modèle Meta Llama si le modèle est autorisé.
- Si Mistral renvoie 402 ou demande un moyen de paiement, arrêter et ne pas poursuivre.
- Si Groq demande le Developer tier ou une carte, arrêter et ne pas poursuivre.
- Ne pas activer Claude API : elle nécessite des crédits prépayés et une approbation financière distincte de Steve.

## Étape 3 — proposition indépendante
Envoyer exactement la même question à chaque session, sans montrer les réponses des autres :

> Pour NEMI Digital Studio, petite structure en Normandie, avec un PC de 8 Go RAM et un budget logiciel/API additionnel de 0 €, quelle première offre de service et quel premier produit propriétaire devraient être testés pour obtenir des clients et construire des revenus récurrents ? Évalue besoins clients, concurrence, différenciation, temps de production, marge, faisabilité, risques juridiques/données, test MVP et critères d'abandon. Distingue faits, hypothèses et recommandations. Donne tes 5 objections les plus fortes à ta propre proposition et ton niveau de confiance. Ne contacte personne, ne publie rien, ne dépense rien et ne modifie aucun fichier.

## Étape 4 — contradiction croisée
Après réception de toutes les réponses, le coordinateur transmet à chaque session les autres propositions et demande :

> Critique chaque proposition adverse sans chercher à être d'accord. Pour chaque objection : expose le mécanisme d'échec, la preuve ou le test qui permettrait de la confirmer, la gravité et une correction possible. Identifie aussi les points solides que tu reconnais.

Puis envoyer les objections à l'auteur initial :

> Réponds à chaque objection. Reconnais explicitement les objections valides, réfute celles qui ne tiennent pas avec des preuves, révise ta proposition si nécessaire et liste les désaccords qui restent.

Faire un deuxième tour uniquement sur les désaccords non résolus.

## Étape 5 — preuve et archivage
Pour chaque message, enregistrer : fournisseur, modèle, session ID, message/response ID, timestamp UTC, prompt, réponse complète, sources, statut d'usage/coût, objections, réponse et niveau de confiance. Ne jamais reconstruire un message absent ou présenter une simulation comme une réponse réelle.

## Étape 6 — synthèse et arbitrage
Le coordinateur produit les points établis par preuves, hypothèses non vérifiées, objections résolues/non résolues, risques, tests, recommandation et décision attendue de Steve si niveau 2 ou 3.

## Portée de Kilo Swarm
Le tableau Kilo Swarm n'est partagé qu'entre une session principale et ses descendants `task`. Les sessions Agent Manager indépendantes doivent être ciblées par `agent_manager` ; elles ne partagent pas automatiquement le tableau. Les messages Swarm ne réveillent ni n'assignent les agents.
