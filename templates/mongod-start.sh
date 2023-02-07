#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
cd $HOME/bin
./mongod --config $HOME/etc/mongod.conf
