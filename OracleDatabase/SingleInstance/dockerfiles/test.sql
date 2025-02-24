select
   vsql.sql_id,
   vsql.sql_text
from
   v$sql      vsql,
   v$session  sess
where
   vsql.sql_id = sess.sql_id;

quit;
/

