# postgresql-clients-multiversion

## Назначение
Единый Docker-образ с несколькими версиями `pg_dump/psql` (по умолчанию 9.5…17) и Helm-чарт, который автоматически выбирает корректную версию `pg_dump` на основе `server_version` целевой БД. Подходит для сред с разными версиями PostgreSQL.

Примечание: требуется установленный itf-jobchain-operator (CRD `app.itf.com/v1alpha1`: `Job`, `JobChain`).
