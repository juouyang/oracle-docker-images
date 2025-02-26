export ORACLE_PWD=`openssl rand -base64 8`
echo "ORACLE PASSWORD FOR SYS, SYSTEM AND PDBADMIN: $ORACLE_PWD";

# persistent data
mkdir -p /Users/ju/oracle-db/oradata
export VOLUME_ROOT=/Users/ju/oracle-db/oradata
docker run -d \
  --name oracle-db \
  -p 1521:1521 \
  -p 5500:5500 \
  -e ORACLE_SID=ORCLCDB \
  -e ORACLE_PWD=$ORACLE_PWD \
  -v ${VOLUME_ROOT}:/opt/oracle/oradata \
  oracle/database:19.3.0-ee