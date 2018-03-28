# vagrant-macos-macports: a Vagrant box with MacPorts preinstalled

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-macos-macports

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c 'sudo port -N install wget && wget --version'
GNU Wget 1.19.4 built on darwin17.4.0.

-cares +digest -gpgme +https +ipv6 +iri +large-file -metalink +nls
+ntlm +opie +psl +ssl/gnutls

Wgetrc:
    /opt/local/etc/wgetrc (system)
Locale:
    /opt/local/share/locale
Compile:
    /usr/bin/cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC="/opt/local/etc/wgetrc"
    -DLOCALEDIR="/opt/local/share/locale" -I. -I../lib -I../lib
    -I/opt/local/include -DNDEBUG -pipe -Os -m64
Link:
    /usr/bin/cc -DNDEBUG -pipe -Os -m64 -L/opt/local/lib
    -Wl,-headerpad_max_install_names -L/opt/local/lib -lpcre -lidn2
    -lnettle /opt/local/lib/libgnutls.dylib -L/opt/local/lib -lz
    -L/opt/local/lib -lpsl ftp-opie.o gnutls.o http-ntlm.o
    ../lib/libgnu.a /opt/local/lib/libiconv.dylib
    /opt/local/lib/libintl.dylib -Wl,-framework -Wl,CoreFoundation
    /opt/local/lib/libunistring.dylib

Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://www.gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Originally written by Hrvoje Niksic <hniksic@xemacs.org>.
Please send bug reports and questions to <bug-wget@gnu.org>.
```

# REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* [VirtualBox](https://www.virtualbox.org/) and/or [VMware](https://www.vmware.com)
* [vagrant-vmware-{fusion,workstation} plugin](https://www.vagrantup.com/vmware/index.html)
* [vagrant-package-vmware](https://github.com/bacongravy/vagrant-package-vmware)

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# EXPORT

```console
$ make boxes
```
