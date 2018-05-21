#!/usr/bin/env zsh

emacs_visible_frames() {
    emacsclient -a "" -e '(length (visible-frame-list))'
}

emacs_set_focus() {
    emacsclient -n -e "(select-frame-set-input-focus (selected-frame))" > /dev/null
}

emacs_server_running() {
    emacsclient -a "false" -e "(boundp 'server-process)" 2> /dev/null
}

emacs_server_gui() {
    emacsclient -a "false" -e "(and (boundp 'server-process) (not (daemonp)))" 2> /dev/null
}
