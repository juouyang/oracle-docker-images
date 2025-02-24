export VOLUME_ROOT=/Users/ju/oracle-db/oradata
docker run -d \
  --name oracle-db \
  -p 1521:1521 \
  -p 5500:5500 \
  -e ORACLE_PWD=53916262 \
  -v ${VOLUME_ROOT}:/opt/oracle/oradata \
  juouyang/oracle-db:19.3.0-se2