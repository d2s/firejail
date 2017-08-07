# Firejail profile for hexchat
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/hexchat.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/hexchat

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

mkdir ~/.config/hexchat
whitelist ~/.config/hexchat
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
no3d
nogroups
nonewprivs
noroot
nosound
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-bin hexchat
private-dev
private-tmp

noexec ${HOME}
noexec /tmp

# CLOBBERED COMMENTS
# Currently in testing (may not work for all users)
# debug note: private-bin requires perl, python, etc on some systems
# noblacklist /usr/lib/python2*
# noblacklist /usr/lib/python3*
