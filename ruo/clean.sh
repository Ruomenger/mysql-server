#!/bin/bash

sudo rm -rf /usr/local/mysql5
sudo mkdir -p /usr/local/mysql5
sudo chown ruo:ruo /usr/local/mysql5
mkdir /usr/local/mysql5/logs /usr/local/mysql5/data /usr/local/mysql5/etc
SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cp $SCRIPT_DIR/my.cnf /usr/local/mysql5/etc
