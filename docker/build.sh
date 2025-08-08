build.sh
191 B
#!/usr/bin/env sh
docker build . -t docker-registry.fitdev.ru:15650/k8s/postgres-client-multiversion:1.0.0
docker push docker-registry.fitdev.ru:15650/k8s/postgres-client-multiversion:1.0.0
