#!/bin/bash

cd /root
npm install
./node_modules/node-deb/node-deb -- index.json
cp ../*.deb .
status=$?
find . -not -uid $(stat -c "%u" .) -exec chown --reference=. {} \;
exit $status # exit with the saved status value
