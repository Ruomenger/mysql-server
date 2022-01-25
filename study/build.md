# 编译指南

参考链接： https://segmentfault.com/a/1190000009909776

cmake . -DCMAKE_INSTALL_PREFIX=/usr/local/mysql \
 -DMYSQL_DATADIR=/data/mysql \
 -DSYSCONFDIR=/etc \
 -DWITHOUT_TOKUDB=1 \
 -DWITH_INNOBASE_STORAGE_ENGINE=1 \
 -DWITH_ARCHIVE_STPRAGE_ENGINE=1 \
 -DWITH_BLACKHOLE_STORAGE_ENGINE=1 \
 -DWIYH_READLINE=1 \
 -DWIYH_SSL=system \
 -DVITH_ZLIB=system \
 -DWITH_LOBWRAP=0 \
 -DMYSQL_UNIX_ADDR=/tmp/mysql.sock \
 -DDEFAULT_CHARSET=utf8 \
 -DDEFAULT_COLLATION=utf8_general_ci

-DMYSQL_USER=postgres
sudo mkdir /usr/local/mariadb
mkdir build
cd build
cmake ..    -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE \
-DCMAKE_INSTALL_PREFIX=/usr/local/mariadb -DMYSQL_DATADIR=/usr/local/mariadb/data -DSYSCONFDIR=/etc/mariadb

make -j 4
make install
/usr/local/mariadb/scripts/mysql_install_db --user=postgres --datadir=/usr/local/mariadb/data
mysqld
mysql -u postgres
ALTER USER 'postgres'@'localhost' IDENTIFIED BY 'mysql2022';

b mysql_execute_command
b mysql_parse
b dispatch_command
b do_command

gdb -x ./.gdb_bp /usr/local/mariadb/bin/mysqld