export PS1='\u@\H \w\$ '

has_brew=`which brew`
if [[ $has_brew ]]; then
    export PATH="/usr/local/bin:/usr/local/share/python:$PATH"
fi
