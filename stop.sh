#!/usr/bin/env bash

if [ -f pid ]; then
    echo 'stop service ...'
    kill $(cat pid)
else
    echo 'pid file does not exist.'
    kill $(pgrep -f http.server)
fi