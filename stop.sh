#!/usr/bin/env bash

TIME_NOW=$(date +%c)
APP_ROOT="/home/ubuntu/app/lastdance"
DEPLOY_LOG="$PROJECT_ROOT/deploy.log"

# 현재 구동 중인 애플리케이션 pid 확인
CURRENT_PID=$(pgrep -f http.server)

# 프로세스가 켜져 있으면 종료
if [ -z $CURRENT_PID ]; then
  echo "[$TIME_NOW] No applications are currently running" >> $DEPLOY_LOG
else
  echo "[$TIME_NOW]I'm Terminator($CURRENT_PID)" >> $DEPLOY_LOG
  kill -15 $CURRENT_PID
fi