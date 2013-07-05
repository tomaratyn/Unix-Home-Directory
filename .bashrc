export PS1='🌟  \u@\H \w\$ '

has_brew=`which brew`
if [[ $has_brew ]]; then
    export PATH="/usr/local/bin:/usr/local/share/python:$PATH"
fi

alias connect_zenit="ssh int322_132b45@zenit.senecac.on.ca"
alias connect_scs="ssh thomasz.aratyn@scs.senecac.on.ca"
