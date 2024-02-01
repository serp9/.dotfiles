#!/usr/bin/bash

# DECLARE OPTIONS
languages=$(echo "go c typescript javascript php" | tr " " "\n")
core_utils=$(echo "find xargs sed awk tldr tmux" | tr " " "\n")

# PICK LANG/UTIL
selected=$(echo -e "$languages\n$core_utils" | fzf)

# PICK TOPIC OF LANG/UTIL
read -p "GIMME YOUR topic: " topic

# BUILD QUERY BASED ON TYPE
if echo "$languages" | grep -qs $selected; then
    query=$(echo -e "curl cht.sh/$selected/$(echo "$topic" | tr " " "+")")    
else
    query=$(echo -e "curl cht.sh/$selected~$topic")
fi

# OPEN PANE WITH RESULT
tmux split-window -h bash -c "$(echo -e "$query") | less"
