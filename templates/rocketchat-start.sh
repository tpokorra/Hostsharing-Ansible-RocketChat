#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/rocketchat.pid

source $HOME/.profile
cd $HOME/Rocket.Chat

export ROOT_URL=http://localhost:{{rocketchat_port}}
export PORT={{rocketchat_port}}
export MONGO_URL="mongodb://localhost:{{mongod_port}}/rocketchat?replicaSet=rs01"
export MONGO_OPLOG_URL="mongodb://localhost:{{mongod_port}}/local?replicaSet=rs01"

nohup node main.js > $HOME/var/log/rocketchat.log 2>&1 &
echo $! > $PID
