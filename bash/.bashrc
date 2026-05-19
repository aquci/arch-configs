PS1='\[\e[1;36m\]\w\[\e[0m\] \[\e[1;32m\]$(__git_ps1)\[\e[0m\] ❯ '
source /usr/share/git/completion/git-prompt.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias st='nohup steam > /dev/null 2>&1 &'
alias ff='nohup firefox > /dev/null 2>&1 &'
alias tg='nohup Telegram > /dev/null 2>&1 &'
alias ob='nohup obsidian >/dev/null 2>&1 &'
alias kr='nohup krita >/dev/null 2>&1 &'
alias pt='printf "\033[1;31m"; pfetch; printf "\033[0m"'

export PATH="$PATH:/home/aqusha/.local/bin"
