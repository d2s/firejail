# Firejail profile for vlc
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/vlc.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/vlc

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
shell none

private-bin vlc,cvlc,nvlc,rvlc,qvlc,svlc
private-dev
private-tmp

noexec ${HOME}
noexec /tmp

# CLOBBERED COMMENTS
# memory-deny-write-execute - breaks playing videos
# nogroups
