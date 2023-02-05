#!/bin/bash
set -e

python3 crypto51/app.py
python3 crypto51/render.py
python3 crypto51/s3update.py