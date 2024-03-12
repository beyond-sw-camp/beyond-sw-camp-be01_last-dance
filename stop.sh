#!/usr/bin/env bash

TIME_NOW=$(date +%c)

# 현재 구동 중인 애플리케이션 pid 확인
CURRENT_PID=$(pgrep -f http.server)

# 프로세스가 켜져 있으면 종료
if [ -z $CURRENT_PID ]; then
  echo "$TIME_NOW > 현재 실행중인 애플리케이션이 없습니다" >> deploy.log
else
  echo "$TIME_NOW > 실행중인 $CURRENT_PID 애플리케이션 종료 " >> deploy.log
  kill -15 $CURRENT_PID
fi