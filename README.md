# postgresql-clients-multiversion

## Purpose
A single Docker image with multiple `pg_dump/psql` versions (default 9.5…17) plus a Helm chart that auto-selects the correct `pg_dump` based on the target DB `server_version`. Suited for mixed-version PostgreSQL environments with a unified backup pipeline.

Note: requires itf-jobchain-operator installed (CRDs `app.itf.com/v1alpha1`: `Job`, `JobChain`).
