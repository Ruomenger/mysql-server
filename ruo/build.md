# 编译说明

```bash
# cmake 参数配置 clion 使用
-DWITH_SSL=/usr/local/ssl -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE -DDOWNLOAD_BOOST=1 -DWITH_BOOST=/home/ruo/local/build/boost -DWITH_DEBUG=1 -DCMAKE_INSTALL_PREFIX=/usr/local/mysql5 -DMYSQL_DATADIR=/usr/local/mysql5/data -DMYSQL_TCP_PORT=3306 -DENABLE_DOWNLOADS=1
```

参考链接： https://segmentfault.com/a/1190000009909776

cmake . -DCMAKE_INSTALL_PREFIX=/usr/local/mysql
-DMYSQL_DATADIR=/data/mysql
-DSYSCONFDIR=/etc
-DWITHOUT_TOKUDB=1
-DWITH_INNOBASE_STORAGE_ENGINE=1
-DWITH_ARCHIVE_STPRAGE_ENGINE=1
-DWITH_BLACKHOLE_STORAGE_ENGINE=1
-DWIYH_READLINE=1
-DWIYH_SSL=system
-DVITH_ZLIB=system
-DWITH_LOBWRAP=0
-DMYSQL_UNIX_ADDR=/tmp/mysql.sock
-DDEFAULT_CHARSET=utf8
-DDEFAULT_COLLATION=utf8_general_ci

sudo mkdir /usr/local/mysql
sudo chown ruo:ruo /usr/local/mysql
mkdir build
cd build
cmake ..    -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE
-DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DMYSQL_DATADIR=/usr/local/mysql/data

make -j 4
make install
/usr/local/mariadb/scripts/mysql_install_db --user=postgres --datadir=/usr/local/mariadb/data
mysqld
mysql -u ruo
ALTER USER 'ruo'@'localhost' IDENTIFIED BY 'mysql2022';

b mysql_execute_command
b mysql_parse
b dispatch_command
b do_command

gdb -x ./.gdb_bp /usr/local/mariadb/bin/mysqld

# mysql学习

## 编译

```bash
CC=clang CXX=clang++ cmake .. -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE \
-DDOWNLOAD_BOOST=1 -DWITH_BOOST=/home/ruo/local/build/boost -DWITH_DEBUG=1 \
-DCMAKE_INSTALL_PREFIX=/usr/local/mysql5 -DMYSQL_DATADIR=/usr/local/mysql5/data \
-DDEFAULT_CHARSET=utf8mb4 -DDEFAULT_COLLATION=utf8mb4_0900_ai_ci \
-DSYSCONFDIR=/usr/local/mysql5/etc -DMYSQL_TCP_PORT=3306 -DWITH_SSL=/usr/local/ssl

make -j 4
make install
mysqld --initialize
mysql -u root --password=''

ALTER USER 'root'@'localhost' IDENTIFIED BY 'mysql2023';
ALTER USER USER() IDENTIFIED BY 'mysql2023';

b mysql_execute_command
b mysql_parse
b dispatch_command
b do_command

gdb -x ./.gdb_bp /usr/local/mysql5/bin/mysqld
```
