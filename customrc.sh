alias lst='ls -lahtr'
alias grepc='grep -nr --color'

alias gw='grunt watch --common=local'
alias nbg='npm install; bower install; grunt watch --common=local'
alias gpo='git push origin'
alias ys='yarn start'
alias yt='yarn test'

export PATH=$PATH:~/bin/:/usr/local/bin/:/usr/local/go/bin

export GOPATH=$HOME/Go

export PATH=$PATH:$GOPATH/bin

ORG=goldins

function current_repo() {
  git remote -v | head -n1 | awk '{print $2}' | sed 's/.*\///' | sed 's/\.git//'
}

function master_diff() {
  open https://github.com/${ORG}/`current_repo`/compare/master...`current_branch`\?expand\=1
}

function dev_diff() {
  open https://github.com/${ORG}/`current_repo`/compare/dev...`current_branch`\?expand\=1
}

function see_tag() {
  open https://github.com/${ORG}/`current_repo`/releases/tag/$1
}

function branch_diff() {
  open https://github.com/${ORG}/`current_repo`/compare/$1...`current_branch`\?expand\=1
}

function release_diff() {
  `branch_diff release-$1`;
}

function curl2html() {
   curl $1 > html.html && open html.html
}

function curl2json_pp() {
   curl $1 | json_pp
}

fpath=(/usr/local/share/zsh-completions $fpath)

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'

alias cb='gco $(gb | fzf)'

nvm use 10

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

