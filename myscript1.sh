#!/bin/bash

set -e

echo "*"
echo "[Who is logged in:]"
who # who is logged in

echo "[The username and his current terminal:]"
mesg

echo "[Checking any logged user message status:]"
who -T

echo "[Monitoring disk space:]"
du -s /var/log/
du -S /var/log/
du -S /var/log/ | sort -rn
echo "*"
