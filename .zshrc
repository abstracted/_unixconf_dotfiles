#            _              
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|

#█▓▒░  ALIAS
alias clearhistory='cat /dev/null > $HOME/.zsh_history ; exit'
alias grep="grep -E"
alias ll='ls -lah'
alias ls='exa --icons'
alias lsnetwork="clear ; sudo nmap -sS -T aggressive 192.168.0.0/24 | less"
alias lsports="clear ; namp -sS -T aggressive localhost"
alias lsip="curl http://ipecho.net/plain; echo"
alias route='netstat -rn'
alias vi='vim'

function gcm() { 
  git commit -m $1 
}
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gc='git commit -v'
alias gcb='git checkout -b'
alias git_current_branch='git branch | tail -n 1 | cut -d" " -f2'
alias gd='git diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
alias gm='git merge'
alias gp="git push"
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gpu='git push upstream'
alias gr='git remote'
alias gra='git remote add'


#█▓▒░  IMPORTS
function sourceIf() {
  [ -e "$1" ] && source $1
}
function fpathIf() {
  [ -e "$1" ] && fpath=($1 $fpath)
}
sourceIf /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
sourceIf /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
sourceIf /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpathIf /usr/local/share/zsh-completions

#█▓▒░  OPTIONS
setopt autocd
setopt autopushd
setopt complete_aliases
setopt correct
setopt extendedglob
setopt nobeep
setopt nocaseglob
setopt nocheckjobs
setopt numericglobsort
setopt prompt_subst
setopt rcexpandparam

#█▓▒░  HISTORY
export HISTSIZE="1000"
export SAVEHIST="500"
export HISTFILE="$HOME/.zsh_history"
setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

#█▓▒░  ZSTYLE
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' list-colors "\$\{(s.:.)LS_COLORS\}"
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' use-cache on

#█▓▒░  KEYBINDINGS
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets
# showkey -a       # get keyboard keycodes
# zle -la | less   # get all possible commands
# bindkey          # get all currently bounded commands

bindkey -e
bindkey '\e[3~'     delete-char                   # delete
bindkey '^[[c'      forward-char                  # right key
bindkey '^[[d'      backward-char                 # left key
bindkey '^[[1;5C'     forward-word                  # ctrl + right
bindkey '^[[1;5D'     backward-word                 # ctrl + left
bindkey '^[[1;7D'     backward-kill-word            # ctrl + alt + left
bindkey '^[[1;7C'     kill-word                     # ctrl + alt + right
bindkey "^[[B"      history-substring-search-down # down arrow history substring search
bindkey "^[[A"      history-substring-search-up   # up arrow history substring search
bindkey "^[[H"      beginning-of-line             # [Home] - Go to beginning of line
bindkey "^[[F"      end-of-line                   # [End] - Go to end of line

# #█▓▒░  LESS COLORS
export LESS_TERMCAP_mb="$(tput bold; tput setaf 2)";
export LESS_TERMCAP_md="$(tput bold; tput setaf 6)";
export LESS_TERMCAP_me="$(tput sgr0)";
export LESS_TERMCAP_so="$(tput bold; tput setaf 3; tput setab 4)";
export LESS_TERMCAP_se="$(tput rmso; tput sgr0)";
export LESS_TERMCAP_us="$(tput smul; tput bold; tput setaf 7)";
export LESS_TERMCAP_ue="$(tput rmul; tput sgr0)";
export LESS_TERMCAP_mr="$(tput rev)";
export LESS_TERMCAP_mh="$(tput dim)";
export LESS_TERMCAP_ZN="$(tput ssubm)";
export LESS_TERMCAP_ZV="$(tput rsubm)";
export LESS_TERMCAP_ZO="$(tput ssupm)";
export LESS_TERMCAP_ZW="$(tput rsupm)";
export LESS="--RAW-CONTROL-CHARS";

#█▓▒░  VARS
export PATH="$PATH:$HOME/scripts";
export PATH="$PATH:$HOME/.node_modules/bin";
export PATH="$PATH:$HOME/.cargo/bin";
export QT_QPA_PLATFORMTHEME="qt5ct";
export TERM=xterm

#█▓▒░  PROMPT
eval "$(starship init zsh)"

#█▓▒░  MOTD
(eval "nohup wal -Rn" > /dev/null 2>&1 &) ; clear ; neofetch
