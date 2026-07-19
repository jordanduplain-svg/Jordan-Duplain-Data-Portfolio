# Jaffle Shop, projet dbt

Projet perso pour pratiquer dbt, à partir du projet pédagogique officiel jaffle-shop-classic de dbt Labs (https://github.com/dbt-labs/jaffle-shop-classic).

## C'est quoi dbt

dbt sert à transformer des données brutes en tables analytiques directement en SQL, avec tests automatiques et documentation générée. Ici le projet tourne en local avec DuckDB, pas besoin de warehouse cloud.

## Ce que j'ai fait

- Repris le projet de base : 3 sources brutes (clients, commandes, paiements), nettoyées puis combinées en 2 tables finales (customers, orders)
- Ajouté 2 modèles perso en plus du tutoriel :
  - monthly_revenue.sql : chiffre d'affaires, nombre de commandes et panier moyen par mois
  - customer_segments.sql : segmentation des clients (nouveau, récurrent, fidèle, sans commande) selon leur nombre de commandes
- 20 tests de qualité de données (unicité, cohérence des clés), tous passés

## Structure

```
models/
  staging/
    stg_customers.sql
    stg_orders.sql
    stg_payments.sql
  customers.sql
  orders.sql
  monthly_revenue.sql     (perso)
  customer_segments.sql   (perso)
```

## Lancer le projet

```bash
python -m venv venv
source venv/Scripts/activate
pip install dbt-core dbt-duckdb

dbt seed
dbt run
dbt test
```

Nécessite un profiles.yml qui pointe vers DuckDB.


