# .bashrc
export HISTSIZE=9000000
export HISTFILES=9000000
export PS1='[\t]\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# алиас для открытия сразу с проектами
alias gvimp='gvim +Project'
export EDITOR=vim
#настройки git
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
# общие команды git
git config --global color.ui "always"
git config --global color.diff "always"
alias giad='git add'
alias gico='git commit'
alias gidi='git diff --color'
alias gidiw='git diff --color-words'
alias gilo='git log'
alias gist='git status'
alias curl='curl -k'
#красивый, отсортированный по дате, вывод бранчей
alias gibd='for k in `git branch|sed s/^..//`;do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k";done|sort; echo -e `git rev-parse --abbrev-ref HEAD`'
# выводит раскрашенную историю коммитов с датами и тегами, 
alias gihist="git log --pretty=tformat:'%ad %Cgreen%s %Cblue%an %Cred%d%Creset' --graph --date=short"
# показывает что изменялось в последнем коммите
alias gistat="git log --stat --no-merges --max-count=1"
# запостить на пастебин - install pastebinit
alias out='pastebinit -a webeith -b http://pastebin.com -f text | xclip -i'
alias outp='pastebinit -a webeith -b http://pastebin.com -f php | xclip -i'
alias hh='history | egrep -i'
alias j='jobs -l'
alias pwg='pwgen -cnB 8 10 | while read PASS; do echo -n t; echo -n  | md5sum | cut -f1 -d ; done'
alias g='gvim --remote-tab-silent'

#ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'
alias lh='ls -lah --color=auto'

## cd
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias mkdir='mkdir -pv'
