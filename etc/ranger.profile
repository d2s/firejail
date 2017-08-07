# Firejail profile for ranger
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/ranger.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist /usr/bin/perl
noblacklist /usr/lib/perl*
noblacklist /usr/share/perl*
noblacklist ~/.config/ranger

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
net none
nogroups
nonewprivs
noroot
nosound
protocol unix
seccomp

private-dev

# CLOBBERED COMMENTS
# noblacklist /usr/bin/cpan*
