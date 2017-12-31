# vagrant-macos-macports: a Vagrant box with MacPorts preinstalled

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c 'sudo port -N install wget && wget --version'
...
GNU Wget 1.19.2 built on darwin17.2.0.

-cares +digest -gpgme +https +ipv6 +iri +large-file -metalink +nls
+ntlm +opie +psl +ssl/gnutls

Wgetrc:
    /opt/local/etc/wgetrc (system)
Locale:
    /opt/local/share/locale
Compile:
    /usr/bin/cc -DHAVE_CONFIG_H -DSYSTEM_WGETRC="/opt/local/etc/wgetrc"
    -DLOCALEDIR="/opt/local/share/locale" -I. -I../lib -I../lib
    -I/opt/local/include -I/opt/local/include/p11-kit-1
    -DHAVE_LIBGNUTLS -DNDEBUG -pipe -Os -m64
Link:
    /usr/bin/cc -I/opt/local/include/p11-kit-1 -DHAVE_LIBGNUTLS
    -DNDEBUG -pipe -Os -m64 -L/opt/local/lib
    -Wl,-headerpad_max_install_names -L/opt/local/lib -lpcre -lidn2
    -lnettle -L/opt/local/lib -lgnutls -L/opt/local/lib -lz
    -L/opt/local/lib -lpsl ftp-opie.o gnutls.o http-ntlm.o
    ../lib/libgnu.a -liconv -lintl -Wl,-framework -Wl,CoreFoundation
    -lunistring

Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://www.gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Originally written by Hrvoje Niksic <hniksic@xemacs.org>.
Please send bug reports and questions to <bug-wget@gnu.org>.
```

# REQUIREMENTS

* [macOS Vagrant base box](https://github.com/mcandre/packer-templates/tree/master/macos)
* [Vagrant](https://www.vagrantup.com)
* [VMware](https://www.vmware.com)
* [vagrant-vmware-{fusion,workstation} plugin](https://www.vagrantup.com/vmware/index.html)

# EXPORT

Unfortunately, VMware-provided Vagrant VM's are not easy to export for reuse in downstream Vagrant boxes.
