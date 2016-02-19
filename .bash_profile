$IOJS_VERSION = echo $NVM_BIN | cut -d '/' -f 7

alias gc="git add -A && git commit -m"
alias daisy="du -h -d 1"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias sshqa="ssh devs@factory01.qa.nymetro.com"
alias nvmupdate="nvm install iojs --reinstall-packages-from=$IOJS_VERSION"

# add hub
alias git=hub

# add git branch to prompt
export GITAWAREPROMPT=~/config/git-aware-prompt
source $GITAWAREPROMPT/main.sh

# add paths
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/share/npm/bin

# colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# git completion
if [ -f ~/config/.git-completion.bash ]; then
	. ~/config/.git-completion.bash
fi

# brew path
export PATH=/usr/local/bin:$PATH

# colorful PS1
export PS1="\u@\[$txtgrn\]\h\[$txtrst\]:\[$txtblu\]\w \[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$txtred\]root\[$txtrst\]@\[$txtgrn\]\h\[$txtrst\]:\[$txtblu\]\w \[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]# "

# raise open file limit
ulimit -n 2048

export NVM_DIR="/Users/npecora/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
