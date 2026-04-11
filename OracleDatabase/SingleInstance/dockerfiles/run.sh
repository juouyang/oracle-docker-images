export ORACLE_PWD=53916262
echo "ORACLE PASSWORD FOR SYS, SYSTEM AND PDBADMIN: $ORACLE_PWD";

# persistent data
mkdir -p ~/oracle-db/oradata
export VOLUME_ROOT="$HOME/oracle-db/oradata"
docker run -d \
  --name oracle-db \
  -p 1521:1521 \
  -p 5500:5500 \
  -e ORACLE_SID=ORCLCDB \
  -e ORACLE_PWD=$ORACLE_PWD \
  -v ${VOLUME_ROOT}:/opt/oracle/oradata \
  oracle/database:19.3.0-ee-arm64-local
