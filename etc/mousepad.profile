# Firejail profile for mousepad
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/mousepad.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.config/Mousepad

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
protocol unix
seccomp
shell none
tracelog

private-bin mousepad
private-dev
private-tmp
