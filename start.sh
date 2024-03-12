#!/usr/bin/env bash

APP_ROOT="/home/ubuntu/app/lastdance"
APP_LOG="$APP_ROOT/app.log"
ERROR_LOG="$APP_ROOT/err.log"
DEPLOY_LOG="$APP_ROOT/deploy.log"

nohup python3 -m http.server 8765 --directory $APP_ROOT > $APP_LOG 2> $ERROR_LOG &

CURRENT_PID=$(pgrep -f http.server)

TIME_NOW=$(date +%c)
echo "[$TIME_NOW] App run successful !!! (PID:$CURRENT_PID)" > $DEPLOY_LOG