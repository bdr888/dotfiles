#proxy
source ~/.proxy.conf
PROMPT_COMMAND=check_proxy

#submodules
sync_submodule() {
    git submodule sync --recursive
    git submodule update --init --recursive
}

alias ss="sync_submodule"

#mingit
source ~/.mingit.sh

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#list files tracked by git
alias gitwhich="git ls-tree -r master --name-only"

#docker
docker_explode() {
    docker ps -q | xargs docker stop
    docker ps -a -q | xargs docker rm
}

alias explode="docker_explode"

#sling cart project commands
alias slingpcs="project client start"
alias slingps="project shutdown"
alias slingpcadev="project client acceptance dev"
alias slingpcaprod="project client acceptance prod"
alias slingpausedev="PAUSE=before project client acceptance dev"
alias slingpauseprod="PAUSE=before project client acceptance prod"
alias slingtest="project client test run"

#PS1
export PS1="\[\033[38;5;0m\]\[\033[48;5;15m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \t\[$(tput sgr0)\] [\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\[\033[38;5;197m\]\$(parse_git_branch)\[$(tput sgr0)\]\n\$ \[$(tput sgr0)\]"

#PATH
export PATH=$PATH:bin

#Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionsource ~/.mingit.sh
source ~/.mingit.sh
source ~/.mingit.sh
source ~/.mingit.sh
