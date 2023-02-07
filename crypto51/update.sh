#!/bin/bash
set -e

#this may be returning an error due to the bash script not being inside dist
python3 app.py

if [ $? != 0 ];
then
    echo "app.py exited with a non-zero value"
fi
echo "app.py exited successfully"

python3 render.py

if [ $? != 0 ];
then
    echo "render.py exited with a non-zero value"
fi
echo "render.py exited successfully"

python3 s3update.py

if [ $? != 0 ];
then
    echo "s3update.py exited with a non-zero value"
fi
echo "s3update.py exited successfully"
