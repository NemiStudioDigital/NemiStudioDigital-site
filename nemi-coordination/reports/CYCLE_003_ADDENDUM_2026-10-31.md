# NEMI — addendum au rapport du cycle 003 (31 octobre 2026)

## 1. Liaison ChatGPT subscription / Kilo Gateway

La Bibliothèque NEMI contient une capture du 31/10/2026 confirmant la connexion ChatGPT subscription dans Kilo. Un contrôle antérieur de `KILO_GATEWAY_KEY` a toutefois retourné `ABSENT`. Ces faits ne se contredisent pas : la connexion de l'extension Kilo à la subscription permet des appels depuis Kilo local ; un programme NEMI externe qui appelle le Gateway nécessite une clé Gateway distincte.

La documentation Kilo précise que les requêtes éligibles servies par la subscription consomment l'allocation ChatGPT et affichent 0 $ côté Kilo. Pour les intégrations API, la route subscription utilise Responses API. Une limite d'usage arrête la requête sans bascule automatique vers une route payante ; certains échecs de renouvellement peuvent toutefois activer une clé API ou des crédits Kilo enregistrés. Avant tout appel externe, il faudra donc contrôler les fallbacks sans supprimer de credentials ni modifier les réglages sans accord de Steve.

Un script PowerShell de contrôle de présence a été préparé dans `scripts/check_kilo_gateway.ps1`. Il n'affiche jamais la valeur, ne fait aucun appel réseau et ne prouve pas la validité de la clé. Le runbook `KILO_FIRST_COMMITTEE_RUNBOOK.md` décrit le premier débat multi-modèle à lancer depuis Agent Manager, sans exiger de clé Gateway externe.

## 2. NEMI Pulse Metrics 0.1

Un prototype Python sans dépendances a été créé à partir de données exclusivement synthétiques. Il calcule le taux d'intention de contact, le taux de conversion en lead, le revenu par session et le revenu par lead. Il distingue le revenu vérifié de l'estimation et refuse les champs directs d'identification (nom, e-mail, téléphone, adresse, IP, identifiants utilisateur/client/cookie/appareil).

**Validation : 6 tests réussis, 0 échec.** Les tests couvrent les calculs, les dénominateurs nuls, l'étiquetage du revenu non vérifié, le rejet des identifiants directs et des valeurs négatives ou de type incorrect.

Aucun analytics, CRM, site client, tracker ou compte tiers n'est connecté. Le prototype n'est pas une validation juridique CNIL et n'est pas destiné à la production.

## 3. Étude concurrentielle locale — Caen

Échantillon public étudié : 2L Studio (site, photo, fiche Google/SEO local et audit gratuit annoncé), WebStudio Caen (site à partir de 950 €, 7 jours annoncés, maintenance à 85 €/mois et AEO), Capture Communication (identité, web, photo, réseaux sociaux et formation IA/automatisation), Studio 911 (web, print, identité, photo et social), DigitAllies (croissance digitale, notamment BTP) et Nerepix (communication, site, audit et visibilité).

**Conclusion stratégique :** le positionnement généraliste « création de sites + réseaux sociaux » est déjà très concurrentiel localement. La piste à tester est un service de conversion mesurable : audit du parcours mobile, 1–2 corrections, mesure agrégée et bilan actionnable à 30 jours. NEMI Pulse doit commencer comme une méthode de rapport semi-manuelle avant tout investissement SaaS.

Ce relevé n'est pas exhaustif et les offres publiques ne prouvent ni ventes ni satisfaction réelle.

## 4. Échanges inter-IA

Toujours aucun appel fournisseur réel ni conversation croisée dans ce cycle. Les recherches, documents et prototypes ont été produits par le coordinateur ChatGPT et des outils locaux d'exécution Python, pas par Gemini, Codex, Kilo, OpenCode, Mistral, Groq ou Claude.


## 5. NEMI Autoevolution Core 0.3 — journal de messages

Une couche `MessageJournal` a été ajoutée à SQLite pour préparer les échanges du comité : fil, message parent, mission, fournisseur, modèle, runtime, session ID, response ID, rôle, contenu, sources, confiance, usage, provenance et statut simulé.

- Les messages synthétiques sont explicitement `simulated=true`.
- Un message non simulé exige un fournisseur, un modèle, un session ID et un response ID, mais reste `unverified` tant qu'un adaptateur de confiance n'existe pas.
- Des motifs courants de secrets sont refusés avant stockage ; le filtre est heuristique et ne garantit pas la détection de toute donnée sensible.
- Les événements de test/demo sont marqués simulés.

**Validation : 11 tests réussis, 0 échec**, dont 4 tests du journal de messages. Tests relancés avec `PYTHONWARNINGS=error::ResourceWarning`, sans fuite de connexion SQLite. Tests relancés avec `PYTHONWARNINGS=error::ResourceWarning` sans fuite de connexion SQLite. Aucun appel fournisseur réel n'a été effectué.

Archive locale : `NEMI_Autoevolution_Core_0.3_2026-10-31.zip`. SHA-256 : `9590f551150700a16a44d3161564e03b0ea5b112d11cd9f81ff52094f26fd42a`.
