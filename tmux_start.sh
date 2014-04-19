#!/bin/sh

tmux new -d -s gehrhorn

tmux rename-window  'Editor'
tmux new-window -t gehrhorn -n 'Cmd'
tmux new-window -t gehrhorn -n 'Scratch'
tmux new-window -t gehrhorn -n 'Man'

tmux attach -t gehrhorn
