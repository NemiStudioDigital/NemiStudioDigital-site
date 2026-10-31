# Kilo Gateway — point de contrôle complémentaire (31/10/2026)

## Faits établis par les éléments de la Bibliothèque
- La connexion « OpenAI (abonnement ChatGPT) » dans Kilo a été confirmée visuellement le 31/10/2026.
- Le contrôle antérieur du script `check_kilo_gateway.py` a retourné `KILO_GATEWAY_KEY is absent (length 0)`.
- Cela ne signifie pas que la connexion ChatGPT dans l'extension Kilo est cassée : la connexion locale de l'extension et la clé Gateway nécessaire à un programme externe sont deux choses distinctes.

## Distinction technique
1. **Dans Kilo VS Code / CLI** : l'extension peut utiliser la connexion ChatGPT subscription directement pour les modèles pris en charge, sans clé API OpenAI.
2. **Depuis un programme NEMI externe** : l'accès au Kilo Gateway nécessite une clé Gateway locale. Pour le chemin ChatGPT subscription, les appels API doivent utiliser le format Responses API pris en charge par Kilo.
3. **Facturation** : les requêtes éligibles servies par la subscription consomment l'allocation ChatGPT et affichent 0 $ côté Kilo. Une limite de quota arrête la requête au lieu de basculer automatiquement vers une API payante. Certains échecs de renouvellement peuvent toutefois déclencher une route de secours si des clés API ou crédits Kilo sont enregistrés.

## Règles de sécurité
- Ne jamais demander à Steve de coller la clé dans ChatGPT, Gemini, Kilo chat, GitHub ou un rapport.
- Ne jamais écrire la valeur, sa longueur, un extrait ou un hash de la clé dans les journaux.
- Le script `scripts/check_kilo_gateway.ps1` vérifie seulement la présence de la variable Windows User/Process et masque entièrement sa valeur.
- La présence de la variable ne prouve ni sa validité ni la route de facturation.
- Avant tout appel externe, vérifier dans Kilo BYOK qu'aucune clé OpenAI API ni crédit Kilo de secours ne peut être utilisé pour ce test. Ne pas supprimer de credentials sans décision de Steve.
- Aucun appel réseau n'est déclenché par le script de contrôle.

## Sources officielles
- https://kilo.ai/docs/ai-providers/openai-chatgpt-plus
- https://kilo.ai/docs/getting-started/byok
- https://kilo.ai/docs/gateway
- https://kilo.ai/docs/gateway/authentication

## Statut
- Subscription ChatGPT connectée à Kilo : confirmée par capture antérieure.
- KILO_GATEWAY_KEY : absente lors du dernier contrôle documenté ; état actuel non vérifié.
- Appel NEMI externe via Gateway : non réalisé.
- Appel local Kilo avec ChatGPT subscription : possible en principe, mais non exécuté dans ce cycle faute d'accès à la session locale.
