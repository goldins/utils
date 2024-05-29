alias lst='ls -lahtr'
alias grepc='grep -nr --color'

alias grom='git rebase -i origin/main --autostash'

# add all fixup previous commit and force push
alias grbf='ga . && gc --fixup HEAD && grbia HEAD~2 && gpf!'

alias glgs='git log --pretty="%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an: %C(reset)%s"'

alias gwa='git worktree add'
alias gwl='git worktree list'
alias gwr='git worktree remove'
alias grbia='git rebase --autostash --autosquash --interactive'

export PATH=$PATH:~/bin/:/usr/local/bin/:/usr/local/go/bin

export GOPATH=$HOME/Go

export PATH=$PATH:$GOPATH/bin

function curl2html() {
   curl $1 > html.html && open html.html
}

function curl2json_pp() {
   curl $1 | json_pp
}

function vif() {
  vi `fzf`
}

fpath=(/usr/local/share/zsh-completions $fpath)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'

alias cb='gco $(gb | fzf)'

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

export GPG_TTY=$(tty)

nvm use 12

set -o vi

# https://gist.github.com/cezaraugusto/2c91d141ddec026753051ffcace3f1f2#gistcomment-3336641
export GPG_TTY=$(tty)
