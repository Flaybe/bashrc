# Git completion
#
source ~/.bash_completion.d/git-completion.bash

# Git prompt
source ~/.bash_completion.d/git-prompt.sh

alias settings='nvim ~/.bashrc'
alias refresh='source ~/.bashrc'
alias cls='clear'
alias gs='git status'
alias ..='cd ..'
alias ...='cd ../..'
alias home='cd ~'
alias desk='cd ~/Desktop'
alias proj='cd ~/Skola/Code'  # Ändra till var du jobbar mest
alias up='cd .. && ls'
alias help='alias | sort | grep --color=always "="'
alias nvimsettings='nvim ~/AppData/Local/nvim/init.lua'
alias ls='ls -F --color=auto --show-control-chars -C'
bind 'set bell-style none'
bind 'set page-completions off'
bind 'set completion-query-items 5'

if [ -z "$WELCOME_PRINTED" ]; then
  export WELCOME_PRINTED=1
  quote=$(shuf -n 1 ~/.config/gpt_quotes.txt)
  echo -e "\n $quote\n "
fi


export PATH="/c/mingw64/bin:$PATH"
# Fejka "no match"-meddelande på tab fail
bind '"\e[Z":"\C-aecho \"# no match\"\n"'
eval "$(starship init bash)"

alias lstrunc='ls -1 --color=always | awk '\''{ if (length($0) > 50) print substr($0, 1, 47) "..."; else print }'\'' | column'
