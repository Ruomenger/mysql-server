# mysql学习

## 编译

```bash
CC=clang CXX=clang++ cmake .. -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE \
-DDOWNLOAD_BOOST=1 -DWITH_BOOST=/home/postgres/local/build/boost -DWITH_DEBUG=1 \
-DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DMYSQL_DATADIR=/usr/local/mysql/data \
-DDEFAULT_CHARSET=utf8mb4 -DDEFAULT_COLLATION=utf8mb4_0900_ai_ci \
-DSYSCONFDIR=/usr/local/mysql/etc -DMYSQL_TCP_PORT=13306 

make -j 4
make install
mysqld --defaults-file=/usr/local/mysql/etc/my.cnf  --initialize --user=postgres
mysqld
mysql -u root --password=''
 
ALTER USER 'postgres'@'localhost' IDENTIFIED BY 'mysql2022';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'mysql2022';
b mysql_execute_command
b mysql_parse
b dispatch_command
b do_command

gdb -x ./.gdb_bp /usr/local/mysql/bin/mysqld
```
