#!/bin/bash
set -e

cd ~/development/crypto51/crypto51

now=$(date)
echo "update.sh running at: $now"

for f in app.py render.py s3update.py
do
 ~/.local/bin/pipenv run python3 $f
 if [ $? != 0 ];
 then
     echo "$f exited with a non-zero value"
 fi
 echo "$f exited successfully"
done

echo "update.sh completed"