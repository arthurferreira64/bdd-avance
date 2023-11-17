# Projet de Base de Données d'Authentification - README

## Introduction

Ce projet vise à recréer la base de données minimale d'un système d'authentification. Les fichiers SQL fournis permettent de créer la base de données "app_auth" et d'effectuer diverses opérations, telles que l'insertion de données, la création de vues, et l'optimisation des requêtes.

## Structure du Projet

Le projet est divisé en plusieurs parties :

- [**questions.md**](./questions.md) : Liste des questions à traiter dans le projet.
- [**Partie I : Création de la Base de Données**](#partie-i--création-de-la-base-de-données): Création de la base de données `app_auth` et de ses tables principales.
- [**Partie II : Compréhension des Données**](#partie-ii--compréhension-des-données): Exploration des données et création de vues pour analyser les informations des abonnements.
- [**Partie III : Comparaison de Requêtes**](#partie-iii--comparaison-de-requêtes): Comparaison de performances des requêtes SQL avant et après l'indexation.
- [**Partie IV : Monitoring**](#partie-iv--monitoring): Mise en place de triggers pour le suivi et l'historisation des données.
- [**Partie V : Considérations Applicatives**](#partie-v--considérations-applicatives): Intégration avec MongoDB et création de fonctions pour la migration des données.

## Contenu du Projet

### Partie I : Création de la Base de Données

- [**`part_1_1.sql`**](./part_1_1.sql): Création des tables initiales et ajout de contraintes.
- [**`part_1_2.sql`**](./part_1_2.sql): Insertion des données générées avec Python et Faker.
- [**`part_1_3.sql`**](./part_1_3.sql): Création de la vue `session_and_user`.
- [**`part_1_3_b.sql`**](./part_1_3_b.sql) & [**`part_1_3_b_view.sql`**](./part_1_3_b_view.sql): Ajout de colonne et création de vue pour les sessions par mois.
- [**`part_1_3_c.sql`**](./part_1_3_c.sql): Création de la vue `very_active_users_may`.

### Partie II : Compréhension des Données

- [**`part_2_1.sql`**](./part_2_1.sql): Création de la table `subscription_table` et insertion de données.
- [**`part_2_2.sql`**](./part_2_2.sql): Création de la vue `subscription_per_plan_per_month`.

### Partie III : Comparaison de Requêtes

- [**`part_3.ipynb`**](./part_3.ipynb): Notebook Jupyter pour la comparaison des temps d'exécution des requêtes SQL.

### Partie IV : Monitoring

- [**`part_4_1.sql`**](./part_4_1.sql): Création de la table `session_count` et du trigger `trigger_update_session_count`.
- [**`part_4_2.sql`**](./part_4_2.sql): Création de la table `username_history` et du trigger `trigger_update_username`.
- [**`part_4_3.ipynb`**](./part_4_3.ipynb): Notebook Jupyter pour la comparaison des temps d'exécution avec et sans trigger.

### Partie V : Considérations Applicatives

- [**`part_5.ipynb`**](./part_5.ipynb): Intégration avec MongoDB, migration des données et analyses supplémentaires.


