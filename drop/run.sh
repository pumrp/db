#!/bin/bash

echo Starting Mongo Instance
mongod --smallfiles --rest --fork --logpath /var/log/mongodb/server.log
sleep 3
echo Dumping Data
mongo ordering /tmp/MongoRecords.js
tail -f /var/log/mongodb/server.log