#!/usr/bin/zsh

# "Finally, if the shell is a login shell, /etc/zlogin and $ZDOTDIR/.zlogin are read."

if type _archey &> /dev/null; then
    _archey
fi

if [[ (-d ~/.fortunes) && (-x $(whence -p fortune))]]; then
    fortune ~/.fortunes
fi



