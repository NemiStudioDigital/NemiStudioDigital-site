# Fournisseurs IA supplémentaires — shortlist NEMI

## Priorité sans dépense

### Mistral AI
- Kilo documente un fournisseur natif Mistral.
- Le quickstart Mistral indique que Studio Free est activé par défaut, sans carte bancaire.
- La disponibilité dépend du modèle, des limites du compte et des réglages de paiement ; le quickstart signale qu'un appel peut renvoyer `402 Payment Required` si aucun moyen de paiement n'est associé.
- Règle NEMI : tester uniquement si le compte permet l'appel en Free mode ; ne pas ajouter de carte, ne pas activer le pay-as-you-go, arrêter dès qu'une demande de paiement apparaît.

### Groq + modèle Meta Llama
- Kilo documente un fournisseur natif Groq.
- Groq documente un Free tier avec limites de requêtes et de tokens ; le Developer tier est payant et exige un moyen de paiement.
- Utiliser un modèle précis de la liste réellement disponible dans le compte, par exemple un modèle Llama de Meta si encore offert dans le Free tier.
- Règle NEMI : rester sur Free, ne pas passer au Developer tier, ne pas enregistrer de moyen de paiement.

## Candidat premium — Claude / Anthropic
- Kilo et OpenCode documentent l'intégration Anthropic.
- L'API Anthropic fonctionne avec des crédits prépayés ; leur achat est une décision financière de Steve.
- Conserver Claude dans la shortlist stratégique, mais ne pas l'activer sans accord explicite sur le budget.

## Rôle de Groq
Groq est le fournisseur d'inférence ; Llama est le modèle (Meta). Dans le registre NEMI, stocker les deux champs séparément : `provider=groq`, `model=meta-llama/...`.

## État
Aucun de ces comptes ou appels API n'a été vérifié dans ce cycle. Ces éléments sont des candidats documentés, pas des connexions actives.
