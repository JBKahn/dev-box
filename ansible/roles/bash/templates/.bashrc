# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# User specific environment and startup programs

PATH=/usr/pgsql-9.2/bin:/usr/bin/python27:/usr/bin/virtualenv-2.7:/sbin:/usr/sbin/:/usr/bin:$PATH
export PATH

## Source virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
    export WORKON_HOME={{ virtualenv_root }}
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    source /usr/local/bin/virtualenvwrapper.sh
fi

## Source rvm
if [ -f $HOME/.rvm/scripts/rvm ]; then
    source $HOME/.rvm/scripts/rvm
fi

alias be="bundle exec"

export EDITOR=vim

source /etc/environment
