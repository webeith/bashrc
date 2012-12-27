# .bashrc
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
#красивый, отсортированный по дате, вывод бранчей
alias gibd='for k in `git branch|sed s/^..//`;do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k";done|sort; echo -e `git rev-parse --abbrev-ref HEAD`'
# выводит раскрашенную историю коммитов с датами и тегами, 
alias gihist="git log --pretty=tformat:'%ad %Cgreen%s %Cblue%an %Cred%d%Creset' --graph --date=short"
# показывает что изменялось в последнем коммите
alias gistat="git log --stat --no-merges --max-count=1"
# запостить на пастебин - install pastebinit
alias out='pastebinit -a webeith -b http://pastebin.com -f text | xclip -i'
alias outp='pastebinit -a webeith -b http://pastebin.com -f php | xclip -i'
