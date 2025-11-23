#!/bin/sh
# sync_to_minio.sh
# Roda dentro do container do Webspoon

# configura alias (idempotente, pode rodar sempre)
mc alias set localminio http://minio:9000 admin admin123

# garante que o bucket exista
mc mb -p localminio/datalake

# sincroniza o diretório de bronze do Pentaho para o bucket/prefix do MinIO
mc mirror --overwrite --debug /home/tomcat/output/bronze localminio/datalake/bronze