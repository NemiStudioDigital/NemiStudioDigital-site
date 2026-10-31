# NEMI Pulse — stratégie produit et MVP 0.1

## Décision recommandée
Commencer par un service de pilotage de conversion, pas par un SaaS complet. NEMI Pulse est d'abord un format de rapport et une méthode ; l'interface logicielle vient ensuite si plusieurs clients demandent les mêmes indicateurs.

## Utilisateur cible initial
TPE locale (artisan, commerce, service de proximité) qui possède déjà un site ou une présence numérique, reçoit quelques visites ou demandes, mais ne sait pas distinguer visibilité, clics, leads qualifiés et ventes.

## MVP sans collecte réelle
- Sessions / visiteurs agrégés (source et période affichées).
- Clics de contact (téléphone, e-mail, CTA) si l'outil permet une mesure respectueuse de la vie privée.
- Formulaires envoyés.
- Leads qualifiés saisis manuellement dans un CRM séparé.
- Ventes gagnées et revenu attribué, seulement si confirmés par le client.
- Taux d'intention de contact et taux de conversion en lead.
- État de qualité des données : complet, partiel, estimé, non disponible.

## Règles de calcul
- `taux_intention_contact = clics_contact / sessions`.
- `taux_conversion_lead = leads_qualifiés / sessions`.
- `revenu_par_session = revenu_attribué / sessions` uniquement si le revenu est documenté.
- Si le dénominateur vaut zéro, afficher « non calculable », jamais 0 %.
- Toujours distinguer revenu vérifié et estimation.

## Sources de données
- Priorité aux exports agrégés du compte analytics déjà détenu par le client.
- Ne pas imposer un nouvel hébergement ou abonnement pour le pilote.
- Aucun identifiant direct, adresse e-mail, téléphone, IP, cookie ID ou customer ID dans les données analytics du MVP.
- Les leads et le CRM restent séparés des analytics ; pas de rapprochement automatique.

## Critères de validation (hypothèses)
Avant d'investir dans une application :
- réaliser 3 pilotes autorisés ;
- constater que 2 dirigeants sur 3 comprennent les indicateurs ;
- obtenir au moins une décision concrète par client à partir du rapport ;
- vérifier qu'au moins 2 clients souhaitent renouveler le suivi ;
- mesurer le temps de production réel et démontrer que le modèle est rentable.

Ces seuils sont des critères proposés pour l'expérience, pas des résultats obtenus.

## Différenciation
- Moins de tableaux de bord techniques, plus d'actions prioritaires compréhensibles.
- Montrer la qualité des données et les limites.
- Relier le rapport à une correction concrète du site ou du parcours de contact.
- Transparence sur les données, consentements et estimations.

## Risques
- Mesure d'audience et consentement CNIL.
- Données CRM et analytics mélangées.
- Attribution de chiffre d'affaires non prouvée.
- Dépendance à des API ou hébergements payants.
- Tableau de bord qui ne génère aucune action client.

## Prochaine expérience
Utiliser exclusivement les données synthétiques du prototype NEMI Pulse Metrics 0.1 pour valider les calculs et la lisibilité. Aucun tracker ne doit être déployé, aucun site client ne doit être connecté et aucun compte tiers ne doit être consulté.
