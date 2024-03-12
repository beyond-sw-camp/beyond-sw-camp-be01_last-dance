#!/usr/bin/env bash

nohup python3 -m http.server 8765 > app.log 2> err.log &

CURRENT_PID=$(pgrep -f http.server)
echo "$TIME_NOW > 실행된 프로세스 아이디 $CURRENT_PID 입니다."
echo $CURRENT_PID > pid