# alias
alias new-ssh-key='ssh-keygen -o -a 100 -t ed25519'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/peculiaryak/google-cloud-sdk/path.bash.inc' ]; then source '/Users/peculiaryak/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/peculiaryak/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/peculiaryak/google-cloud-sdk/completion.bash.inc'; fi

# virtualenv wrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# show git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\h:\W \u\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "

alias gr='git rebase'
alias gch='git checkout'
alias ga='git add'
alias gs='git status'
alias grm='git fetch origin master:master && git rebase master'
alias grb='git fetch origin develop:develop --force && git rebase develop'
alias gp='git push origin'
alias gpl='git pull origin'
alias gc='git commit'
alias gb='git branch'

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
source /usr/local/opt/autoenv/activate.sh

# jre
# export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/

# vagrant home
export VAGRANT_HOME=/Volumes/PeculiarYak/vagrant/.vagrant.d/

alias rmpyc='find . -name \*.pyc -delete'

# add python $PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export VIRTUALENVWRAPPER_PYTHON='/usr/local/bin/python'

alias gen_ssh='ssh-keygen -o -a 100 -t ed25519'

# add hadoop

export HADOOP_INSTALL=/usr/local/opt/hadoop
#export HADOOP_PREFIX=$HADOOP_INSTALL
export PATH=$PATH:$HADOOP_INSTALL/bin
export PATH=$PATH:$HADOOP_INSTALL/sbin
export JAVA_HOME="$(/usr/libexec/java_home)"
# export HADOOP_OPTS="-Djava.library.path=$JAVA_HOME/lib"
export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar

# firewall
alias show_pf_logs='sudo ifconfig pflog0 create && sudo tcpdump -vv -n -e -ttt -i pflog0'
alias stop_pf_logs='sudo ifconfig pflog0 destroy'
alias vpn_refresh='sudo ifconfig en0 down && sudo route flush && sudo ifconfig en0 up'
alias start_ml='source /usr/local/anaconda3/envs/machine-learning/bin/activate'
eval "$(pipenv --completion)"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export GOPATH=$HOME/Projects/go
