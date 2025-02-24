export ORACLE_IP=172.16.1.104
docker run --rm -it \
  -v $(pwd)/test.sql:/test.sql \
  guywithnose/sqlplus:latest \
  sqlplus sys/53916262@//${ORACLE_IP}:1521/ORCLCDB as sysdba @/test.sql
