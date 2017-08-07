# Firejail profile for ristretto
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/ristretto.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/ristretto
noblacklist ~/.Steam
noblacklist ~/.steam

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
no3d
nogroups
nonewprivs
noroot
nosound
novideo
protocol unix
seccomp
shell none

private-dev
private-tmp

noexec ${HOME}
noexec /tmp
