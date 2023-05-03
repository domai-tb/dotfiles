#!/bin/zsh

# Gnome Keyring
#
# https://github.com/j-san/i3-config/blob/master/start-gnome-keyring.sh
# https://forum.manjaro.org/t/2-gnome-keyring-daemon-instances-after-enabling-unlocking-keyring-after-login/101112
#
eval $(/usr/bin/gnome-keyring-daemon --daemonize --login --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
