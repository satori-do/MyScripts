#!/bin/bash

set -e

echo "*"
echo "[Who is logged in:]"
who # who is logged in

echo "[The username and his current terminal:]"
mesg

echo "[Checking any logged user message status:]"
who -T

echo "*"
