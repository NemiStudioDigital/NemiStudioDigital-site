# Protocole de délibération contradictoire multi-IA

## Objectif
Obtenir une décision robuste par confrontation structurée d'analyses indépendantes, et non par unanimité artificielle.

## Déroulement
1. **Question cadrée** : le coordinateur formule la décision, le contexte, les contraintes, le niveau de risque et les critères de succès.
2. **Propositions indépendantes** : chaque IA principale reçoit le même dossier et produit une analyse sans voir les conclusions des autres au premier tour.
3. **Critique croisée** : chaque IA examine les propositions des autres et relève objections, risques, angles morts, hypothèses, contre-exemples et informations manquantes.
4. **Réponses** : chaque auteur répond point par point aux objections et peut réviser sa position.
5. **Deuxième critique** : les IA évaluent les réponses, testent les hypothèses et demandent les preuves nécessaires.
6. **Synthèse contradictoire** : le rapporteur distingue faits vérifiés, inférences, opinions, hypothèses, points résolus et désaccords persistants.
7. **Décision** : appliquer la matrice de gouvernance. Le consensus n'est retenu que si les objections sont réellement traitées.

## Règles
- Pas de consensus forcé ni de vote majoritaire aveugle.
- Une objection doit être précise, réfutable et accompagnée si possible d'une preuve ou d'un test.
- Les objections non résolues restent visibles; elles ne sont pas effacées dans la synthèse.
- Un agent peut changer d'avis en expliquant quelle preuve l'a convaincu.
- Si le désaccord persiste après deux cycles, ou concerne une décision de niveau 2/3, transmettre à Steve un dossier neutre présentant chaque position, les faits, les risques et les options.
- Une seule IA ne peut pas se présenter comme ayant consulté une autre IA sans réponse authentique de celle-ci.

## Journal obligatoire
Pour chaque intervention : `event_id`, `mission_id`, `timestamp_utc`, `provider`, `model`, `role` (proposition/critique/réponse/synthèse), `parent_event_id`, `content`, `sources`, `confidence`, `status`.

## Mesure de qualité
Évaluer la décision sur : qualité des preuves, couverture des risques, faisabilité, réversibilité, coût total, conformité, intérêt client et clarté des critères de réussite. Le nombre d'IA d'accord n'est pas une preuve.
