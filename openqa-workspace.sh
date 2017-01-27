#!/bin/bash

export OPENQA="$HOME/Projects/suse.com/github.com/os-autoinst"
export OPENQA_CONFIG="${OPENQA}/openQA/local/openqa"

tmux new -s openqa-workspace -d
#tmux new-window -topenqa-workspace:0 -n "root"
tmux new-window -topenqa-workspace:1 -n "os-autoinst"
tmux new-window -topenqa-workspace:2 -n "openQA WebUI"
tmux new-window -topenqa-workspace:3 -n "openQA tests"
tmux new-window -topenqa-workspace:4 -n "openQA Monitoring"
tmux new-window -topenqa-workspace:5 -n "Workspace"

tmux send-keys -topenqa-workspace:0 "sleep 10 & sudo su -;" C-m
tmux send-keys -topenqa-workspace:1 "cd ${OPENQA}/os-autoinst; clear" C-m
tmux send-keys -topenqa-workspace:2 "cd ${OPENQA}/openQA; clear" C-m
tmux send-keys -topenqa-workspace:3 "cd ${OPENQA}/os-autoinst-distri-opensuse; clear" C-m
tmux send-keys -topenqa-workspace:4 "cd ${OPENQA}/openQA; clear" C-m
tmux send-keys -topenqa-workspace:5 "cd ${OPENQA}/; clear" C-m

tmux select-window -topenqa-workspace:0
tmux attach-session -topenqa-workspace
