which sqlplus
export ORACLE_PWD=53916262
export ORACLE_IP=127.0.0.1
export ORACLE_SID=ORCLCDB
# docker pull ghcr.io/oracle/oraclelinux8-instantclient:19
# docker run --rm -it \
#   -v $(pwd)/test.sql:/test.sql \
#   ghcr.io/oracle/oraclelinux8-instantclient:19 \
#   sqlplus sys/${ORACLE_PWD}@//${ORACLE_IP}:1521/${ORACLE_SID} as sysdba @/test.sql
sqlplus sys/${ORACLE_PWD}@//${ORACLE_IP}:1521/${ORACLE_SID} as sysdba @test.sql