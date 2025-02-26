export ORACLE_IP=$(ifconfig $(ip route show default | awk "/default/ {print \$5}") | grep inet | grep -v "::" | awk "{print \$2}" | head -n 1)
export ORACLE_SID=ORCLCDB
docker pull ghcr.io/oracle/oraclelinux8-instantclient:19
docker run --rm -it \
  -v $(pwd)/test.sql:/test.sql \
  ghcr.io/oracle/oraclelinux8-instantclient:19 \
  sqlplus sys/${ORACLE_PWD}@//${ORACLE_IP}:1521/${ORACLE_SID} as sysdba @/test.sql
