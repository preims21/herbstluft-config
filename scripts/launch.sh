#!/usr/bin/env bash
#
## Created By: Jake@Linux
# Created On: Fri 02 Jun 2023 01:13:18 PM CDT
# # Project: launch menu

# Modified by Pascal Reimschüssel <pascal.reimschuessel@posteo.de>
# Modified on 14.11.2023 21:56
# Modified to display text in german

sleep .15
DIR1="/usr/bin/"

Menu="$(ls "$DIR1" | cut -d / -f 3 | uniq -u | sort | fzf --prompt="Welches Programm möchtest du starten: " --border=rounded --margin=5% --color='fg:104,fg+:255,pointer:12,hl:255,hl+:12,header:12,prompt:255' --height 100% --reverse --header="             Amwendungstarter 3000" --info=hidden --header-first)" 
exec devour "$Menu"
