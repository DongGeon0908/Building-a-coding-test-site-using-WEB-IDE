

- Aws : m5.4xlarge > TCP > SSH > SCP > RDP
- Server : Ubuntu 18.04 LTS, Apache Tomcat 9.0
- jdk - 14.0.2

- apt install
```
ubuntu@ip-172-31-54-102:/usr/local/apache$ dpkg -l
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version      Architecture Description
+++-==============-============-============-=================================
ii  accountsservic 0.6.45-1ubun amd64        query and manipulate user account
ii  acl            2.2.52-3buil amd64        Access control list utilities
ii  acpid          1:2.0.28-1ub amd64        Advanced Configuration and Power 
ii  adduser        3.116ubuntu1 all          add and remove users and groups
ii  apparmor       2.12-4ubuntu amd64        user-space parser utility for App
ii  apport         2.20.9-0ubun all          automatically generate crash repo
ii  apport-symptom 0.20         all          symptom scripts for apport
ii  apt            1.6.12ubuntu amd64        commandline package manager
ii  apt-transport- 1.6.12ubuntu all          transitional package for https su
ii  apt-utils      1.6.12ubuntu amd64        package management related utilit
ii  at             3.1.20-3.1ub amd64        Delayed job execution and batch p
ii  aufs-tools     1:4.9+201709 amd64        Tools to manage aufs filesystems
ii  base-files     10.1ubuntu2. amd64        Debian base system miscellaneous 
ii  base-passwd    3.5.44       amd64        Debian base system master passwor
ii  bash           4.4.18-2ubun amd64        GNU Bourne Again SHell
ii  bash-completio 1:2.8-1ubunt all          programmable completion for the b
ii  bc             1.07.1-2     amd64        GNU bc arbitrary precision calcul
ii  bcache-tools   1.0.8-2build amd64        bcache userspace tools
ii  bind9-host     1:9.11.3+dfs amd64        DNS lookup utility (deprecated)
ii  binutils       2.30-21ubunt amd64        GNU assembler, linker and binary 
ii  binutils-commo 2.30-21ubunt amd64        Common files for the GNU assemble
ii  binutils-x86-6 2.30-21ubunt amd64        GNU binary utilities, for x86-64-
ii  bsdmainutils   11.1.2ubuntu amd64        collection of more utilities from
ii  bsdutils       1:2.31.1-0.4 amd64        basic utilities from 4.4BSD-Lite
ii  btrfs-progs    4.15.1-1buil amd64        Checksumming Copy on Write Filesy
ii  btrfs-tools    4.15.1-1buil amd64        transitional dummy package
ii  busybox-initra 1:1.27.2-2ub amd64        Standalone shell setup for initra
ii  busybox-static 1:1.27.2-2ub amd64        Standalone rescue shell with tons
ii  byobu          5.125-0ubunt all          text window manager, shell multip
ii  bzip2          1.0.6-8.1ubu amd64        high-quality block-sorting file c
ii  ca-certificate 20201027ubun all          Common CA certificates
ii  cgroupfs-mount 1.4          all          Light-weight package to set up cg
ii  cloud-guest-ut 0.30-0ubuntu all          cloud guest utilities
ii  cloud-init     20.2-45-g5f7 all          Init scripts for cloud instances
ii  cloud-initramf 0.40ubuntu1. all          copy initramfs modules into root 
ii  cloud-initramf 0.40ubuntu1. all          write a network interface file in
ii  command-not-fo 18.04.5      all          Suggest installation of packages 
ii  command-not-fo 18.04.5      amd64        Set of data files for command-not
ii  console-setup  1.178ubuntu2 all          console font and keymap setup pro
ii  console-setup- 1.178ubuntu2 all          Linux specific part of console-se
ii  containerd.io  1.2.13-2     amd64        An open and reliable container ru
ii  coreutils      8.28-1ubuntu amd64        GNU core utilities
ii  cpio           2.12+dfsg-6u amd64        GNU cpio -- a program to manage a
ii  cpp            4:7.4.0-1ubu amd64        GNU C preprocessor (cpp)
ii  cpp-7          7.5.0-3ubunt amd64        GNU C preprocessor
ii  cron           3.0pl1-128.1 amd64        process scheduling daemon
ii  cryptsetup     2:2.0.2-1ubu amd64        disk encryption support - startup
ii  cryptsetup-bin 2:2.0.2-1ubu amd64        disk encryption support - command
ii  curl           7.58.0-2ubun amd64        command line tool for transferrin
ii  dash           0.5.8-2.10   amd64        POSIX-compliant shell
ii  dbus           1.12.2-1ubun amd64        simple interprocess messaging sys
ii  debconf        1.5.66ubuntu all          Debian configuration management s
ii  debconf-i18n   1.5.66ubuntu all          full internationalization support
ii  debianutils    4.8.4        amd64        Miscellaneous utilities specific 
ii  diffutils      1:3.6-1      amd64        File comparison utilities
ii  dirmngr        2.2.4-1ubunt amd64        GNU privacy guard - network certi
ii  distro-info-da 0.37ubuntu0. all          information about the distributio
ii  dmeventd       2:1.02.145-4 amd64        Linux Kernel Device Mapper event 
ii  dmidecode      3.1-1ubuntu0 amd64        SMBIOS/DMI table decoder
ii  dmsetup        2:1.02.145-4 amd64        Linux Kernel Device Mapper usersp
ii  dns-root-data  2018013001   all          DNS root data including root zone
ii  dnsmasq-base   2.79-1       amd64        Small caching DNS proxy and DHCP/
ii  docker-ce      5:19.03.12~3 amd64        Docker: the open-source applicati
ii  docker-ce-cli  5:19.03.12~3 amd64        Docker CLI: the open-source appli
ii  dosfstools     4.1-1        amd64        utilities for making and checking
ii  dpkg           1.19.0.5ubun amd64        Debian package management system
ii  e2fsprogs      1.44.1-1ubun amd64        ext2/ext3/ext4 file system utilit
ii  eatmydata      105-6        all          Library and utilities designed to
ii  ebtables       2.0.10.4-3.5 amd64        Ethernet bridge frame table admin
ii  ec2-hibinit-ag 1.0.0-0ubunt all          Amazon EC2 hibernation agent
ii  ed             1.10-2.1     amd64        classic UNIX line editor
ii  eject          2.1.5+deb1+c amd64        ejects CDs and operates CD-Change
ii  ethtool        1:4.15-0ubun amd64        display or change Ethernet device
ii  fdisk          2.31.1-0.4ub amd64        collection of partitioning utilit
ii  file           1:5.32-2ubun amd64        Recognize the type of data in a f
ii  findutils      4.6.0+git+20 amd64        utilities for finding files--find
ii  fonts-ubuntu-c 0.83-2       all          console version of the Ubuntu Mon
ii  friendly-recov 0.2.38ubuntu all          Make recovery boot mode more user
ii  ftp            0.17-34      amd64        classical file transfer client
ii  fuse           2.9.7-1ubunt amd64        Filesystem in Userspace
ii  g++            4:7.4.0-1ubu amd64        GNU C++ compiler
ii  g++-7          7.5.0-3ubunt amd64        GNU C++ compiler
ii  gawk           1:4.1.4+dfsg amd64        GNU awk, a pattern scanning and p
ii  gcc            4:7.4.0-1ubu amd64        GNU C compiler
ii  gcc-7          7.5.0-3ubunt amd64        GNU C compiler
ii  gcc-7-base:amd 7.5.0-3ubunt amd64        GCC, the GNU Compiler Collection 
ii  gcc-8-base:amd 8.4.0-1ubunt amd64        GCC, the GNU Compiler Collection 
ii  gdisk          1.0.3-1      amd64        GPT fdisk text-mode partitioning 
ii  geoip-database 20180315-1   all          IP lookup command line tools that
ii  gettext-base   0.19.8.1-6ub amd64        GNU Internationalization utilitie
ii  gir1.2-glib-2. 1.56.1-1     amd64        Introspection data for GLib, GObj
ii  git            1:2.17.1-1ub amd64        fast, scalable, distributed revis
ii  git-man        1:2.17.1-1ub all          fast, scalable, distributed revis
ii  gnupg          2.2.4-1ubunt amd64        GNU privacy guard - a free PGP re
ii  gnupg-l10n     2.2.4-1ubunt all          GNU privacy guard - localization 
ii  gnupg-utils    2.2.4-1ubunt amd64        GNU privacy guard - utility progr
ii  gpg            2.2.4-1ubunt amd64        GNU Privacy Guard -- minimalist p
ii  gpg-agent      2.2.4-1ubunt amd64        GNU privacy guard - cryptographic
ii  gpg-wks-client 2.2.4-1ubunt amd64        GNU privacy guard - Web Key Servi
ii  gpg-wks-server 2.2.4-1ubunt amd64        GNU privacy guard - Web Key Servi
ii  gpgconf        2.2.4-1ubunt amd64        GNU privacy guard - core configur
ii  gpgsm          2.2.4-1ubunt amd64        GNU privacy guard - S/MIME versio
ii  gpgv           2.2.4-1ubunt amd64        GNU privacy guard - signature ver
ii  grep           3.1-2build1  amd64        GNU grep, egrep and fgrep
ii  groff-base     1.22.3-10    amd64        GNU troff text-formatting system 
ii  grub-common    2.02-2ubuntu amd64        GRand Unified Bootloader (common 
ii  grub-gfxpayloa 0.7          amd64        GRUB gfxpayload blacklist
ii  grub-legacy-ec 1:1          all          Handles update-grub for ec2 insta
ii  grub-pc        2.02-2ubuntu amd64        GRand Unified Bootloader, version
ii  grub-pc-bin    2.02-2ubuntu amd64        GRand Unified Bootloader, version
ii  grub2-common   2.02-2ubuntu amd64        GRand Unified Bootloader (common 
ii  gzip           1.6-5ubuntu1 amd64        GNU compression utilities
ii  hdparm         9.54+ds-1    amd64        tune hard disk parameters for hig
ii  hibagent       1.0.1-0ubunt all          Agent that triggers hibernation o
ii  hostname       3.20         amd64        utility to set/show the host name
ii  htop           2.1.0-3      amd64        interactive processes viewer
ii  info           6.5.0.dfsg.1 amd64        Standalone GNU Info documentation
ii  init           1.51         amd64        metapackage ensuring an init syst
ii  init-system-he 1.51         all          helper tools for all init systems
ii  initramfs-tool 0.130ubuntu3 all          generic modular initramfs generat
ii  initramfs-tool 0.130ubuntu3 amd64        binaries used by initramfs-tools
ii  initramfs-tool 0.130ubuntu3 all          generic modular initramfs generat
ii  install-info   6.5.0.dfsg.1 amd64        Manage installed documentation in
ii  iproute2       4.15.0-2ubun amd64        networking and traffic control to
ii  iptables       1.6.1-2ubunt amd64        administration tools for packet f
ii  iputils-ping   3:20161105-1 amd64        Tools to test the reachability of
ii  iputils-tracep 3:20161105-1 amd64        Tools to trace the network path t
ii  irqbalance     1.3.0-0.1ubu amd64        Daemon to balance interrupts for 
ii  isc-dhcp-clien 4.3.5-3ubunt amd64        DHCP client for automatically obt
ii  isc-dhcp-commo 4.3.5-3ubunt amd64        common manpages relevant to all o
ii  iso-codes      3.79-1       all          ISO language, territory, currency
ii  kbd            2.0.4-2ubunt amd64        Linux console font and keytable u
ii  keyboard-confi 1.178ubuntu2 all          system-wide keyboard preferences
ii  klibc-utils    2.0.4-9ubunt amd64        small utilities built with klibc 
ii  kmod           24-1ubuntu3. amd64        tools for managing Linux kernel m
ii  krb5-locales   1.16-2ubuntu all          internationalization support for 
ii  landscape-comm 18.01-0ubunt amd64        Landscape administration system c
ii  language-selec 0.188.3      all          Language selector for Ubuntu
ii  less           487-0.1      amd64        pager program similar to more
ii  libaccountsser 0.6.45-1ubun amd64        query and manipulate user account
ii  libacl1:amd64  2.2.52-3buil amd64        Access control list shared librar
ii  libaio1:amd64  0.3.110-5ubu amd64        Linux kernel AIO access library -
ii  libapparmor1:a 2.12-4ubuntu amd64        changehat AppArmor library
ii  libapt-inst2.0 1.6.12ubuntu amd64        deb package format runtime librar
ii  libapt-pkg5.0: 1.6.12ubuntu amd64        package management runtime librar
ii  libargon2-0:am 0~20161029-1 amd64        memory-hard hashing function - ru
ii  libasan4:amd64 7.5.0-3ubunt amd64        AddressSanitizer -- a fast memory
ii  libasn1-8-heim 7.5.0+dfsg-1 amd64        Heimdal Kerberos - ASN.1 library
ii  libassuan0:amd 2.5.1-2      amd64        IPC library for the GnuPG compone
ii  libatm1:amd64  1:2.5.1-2bui amd64        shared library for ATM (Asynchron
ii  libatomic1:amd 8.4.0-1ubunt amd64        support library providing __atomi
ii  libattr1:amd64 1:2.4.47-2bu amd64        Extended attribute shared library
ii  libaudit-commo 1:2.8.2-1ubu all          Dynamic library for security audi
ii  libaudit1:amd6 1:2.8.2-1ubu amd64        Dynamic library for security audi
ii  libbind9-160:a 1:9.11.3+dfs amd64        BIND9 Shared Library used by BIND
ii  libbinutils:am 2.30-21ubunt amd64        GNU binary utilities (private sha
ii  libblkid1:amd6 2.31.1-0.4ub amd64        block device ID library
ii  libbsd0:amd64  0.8.7-1ubunt amd64        utility functions from BSD system
ii  libbz2-1.0:amd 1.0.6-8.1ubu amd64        high-quality block-sorting file c
ii  libc-ares2:amd 1.14.0-1     amd64        asynchronous name resolver
ii  libc-bin       2.27-3ubuntu amd64        GNU C Library: Binaries
ii  libc-dev-bin   2.27-3ubuntu amd64        GNU C Library: Development binari
ii  libc6:amd64    2.27-3ubuntu amd64        GNU C Library: Shared libraries
ii  libc6-dev:amd6 2.27-3ubuntu amd64        GNU C Library: Development Librar
ii  libcap-ng0:amd 0.7.7-3.1    amd64        An alternate POSIX capabilities l
ii  libcap2:amd64  1:2.25-1.2   amd64        POSIX 1003.1e capabilities (libra
ii  libcap2-bin    1:2.25-1.2   amd64        POSIX 1003.1e capabilities (utili
ii  libcc1-0:amd64 8.4.0-1ubunt amd64        GCC cc1 plugin for GDB
ii  libcgi-fast-pe 1:2.13-1     all          CGI subclass for work with FCGI
ii  libcgi-pm-perl 4.38-1       all          module for Common Gateway Interfa
ii  libcilkrts5:am 7.5.0-3ubunt amd64        Intel Cilk Plus language extensio
ii  libcom-err2:am 1.44.1-1ubun amd64        common error description library
ii  libcryptsetup1 2:2.0.2-1ubu amd64        disk encryption support - shared 
ii  libcurl3-gnutl 7.58.0-2ubun amd64        easy-to-use client-side URL trans
ii  libcurl4:amd64 7.58.0-2ubun amd64        easy-to-use client-side URL trans
ii  libdb5.3:amd64 5.3.28-13.1u amd64        Berkeley v5.3 Database Libraries 
ii  libdbus-1-3:am 1.12.2-1ubun amd64        simple interprocess messaging sys
ii  libdebconfclie 0.213ubuntu1 amd64        Debian Configuration Management S
ii  libdevmapper-e 2:1.02.145-4 amd64        Linux Kernel Device Mapper event 
ii  libdevmapper1. 2:1.02.145-4 amd64        Linux Kernel Device Mapper usersp
ii  libdns-export1 1:9.11.3+dfs amd64        Exported DNS Shared Library
ii  libdns1100:amd 1:9.11.3+dfs amd64        DNS Shared Library used by BIND
ii  libdrm-common  2.4.101-2~18 all          Userspace interface to kernel DRM
ii  libdrm2:amd64  2.4.101-2~18 amd64        Userspace interface to kernel DRM
ii  libdumbnet1:am 1.12-7build1 amd64        dumb, portable networking library
ii  libeatmydata1: 105-6        amd64        Library and utilities to disable 
ii  libedit2:amd64 3.1-20170329 amd64        BSD editline and history librarie
ii  libelf1:amd64  0.170-0.4ubu amd64        library to read and write ELF fil
ii  libencode-loca 1.05-1       all          utility to determine the locale e
ii  liberror-perl  0.17025-1    all          Perl module for error/exception h
ii  libestr0:amd64 0.1.10-2.1   amd64        Helper functions for handling str
ii  libevent-2.1-6 2.1.8-stable amd64        Asynchronous event notification l
ii  libevent-core- 2.1.8-stable amd64        Asynchronous event notification l
ii  libexpat1:amd6 2.2.5-3ubunt amd64        XML parsing C library - runtime l
ii  libext2fs2:amd 1.44.1-1ubun amd64        ext2/ext3/ext4 file system librar
ii  libfastjson4:a 0.99.8-2     amd64        fast json library for C
ii  libfcgi-perl   0.78-2build1 amd64        helper module for FastCGI
ii  libfdisk1:amd6 2.31.1-0.4ub amd64        fdisk partitioning library
ii  libffi6:amd64  3.2.1-8      amd64        Foreign Function Interface librar
ii  libfreetype6:a 2.8.1-2ubunt amd64        FreeType 2 font engine, shared li
ii  libfribidi0:am 0.19.7-2     amd64        Free Implementation of the Unicod
ii  libfuse2:amd64 2.9.7-1ubunt amd64        Filesystem in Userspace (library)
ii  libgcc-7-dev:a 7.5.0-3ubunt amd64        GCC support library (development 
ii  libgcc1:amd64  1:8.4.0-1ubu amd64        GCC support library
ii  libgcrypt20:am 1.8.1-4ubunt amd64        LGPL Crypto library - runtime lib
ii  libgdbm-compat 1.14.1-6     amd64        GNU dbm database routines (legacy
ii  libgdbm5:amd64 1.14.1-6     amd64        GNU dbm database routines (runtim
ii  libgeoip1:amd6 1.6.12-1     amd64        non-DNS IP-to-country resolver li
ii  libgirepositor 1.56.1-1     amd64        Library for handling GObject intr
ii  libglib2.0-0:a 2.56.4-0ubun amd64        GLib library of C routines
ii  libglib2.0-dat 2.56.4-0ubun all          Common files for GLib library
ii  libgmp10:amd64 2:6.1.2+dfsg amd64        Multiprecision arithmetic library
ii  libgnutls30:am 3.5.18-1ubun amd64        GNU TLS library - main runtime li
ii  libgomp1:amd64 8.4.0-1ubunt amd64        GCC OpenMP (GOMP) support library
ii  libgpg-error0: 1.27-6       amd64        library for common error values a
ii  libgpm2:amd64  1.20.7-5     amd64        General Purpose Mouse - shared li
ii  libgssapi-krb5 1.16-2ubuntu amd64        MIT Kerberos runtime libraries - 
ii  libgssapi3-hei 7.5.0+dfsg-1 amd64        Heimdal Kerberos - GSSAPI support
ii  libhcrypto4-he 7.5.0+dfsg-1 amd64        Heimdal Kerberos - crypto library
ii  libheimbase1-h 7.5.0+dfsg-1 amd64        Heimdal Kerberos - Base library
ii  libheimntlm0-h 7.5.0+dfsg-1 amd64        Heimdal Kerberos - NTLM support l
ii  libhogweed4:am 3.4-1        amd64        low level cryptographic library (
ii  libhtml-parser 3.72-3build1 amd64        collection of modules that parse 
ii  libhtml-tagset 3.20-3       all          Data tables pertaining to HTML
ii  libhtml-templa 2.97-1       all          module for using HTML templates w
ii  libhttp-date-p 6.02-1       all          module of date conversion routine
ii  libhttp-messag 6.14-1       all          perl interface to HTTP style mess
ii  libhttp-parser 2.7.1-2      amd64        parser for HTTP messages written 
ii  libhx509-5-hei 7.5.0+dfsg-1 amd64        Heimdal Kerberos - X509 support l
ii  libicu60:amd64 60.2-3ubuntu amd64        International Components for Unic
ii  libidn11:amd64 1.33-2.1ubun amd64        GNU Libidn library, implementatio
ii  libidn2-0:amd6 2.0.4-1.1ubu amd64        Internationalized domain names (I
ii  libio-html-per 1.001-1      all          open an HTML file with automatic 
ii  libip4tc0:amd6 1.6.1-2ubunt amd64        netfilter libip4tc library
ii  libip6tc0:amd6 1.6.1-2ubunt amd64        netfilter libip6tc library
ii  libiptc0:amd64 1.6.1-2ubunt amd64        netfilter libiptc library
ii  libirs160:amd6 1:9.11.3+dfs amd64        DNS Shared Library used by BIND
ii  libisc-export1 1:9.11.3+dfs amd64        Exported ISC Shared Library
ii  libisc169:amd6 1:9.11.3+dfs amd64        ISC Shared Library used by BIND
ii  libisccc160:am 1:9.11.3+dfs amd64        Command Channel Library used by B
ii  libisccfg160:a 1:9.11.3+dfs amd64        Config File Handling Library used
ii  libisl19:amd64 0.19-1       amd64        manipulating sets and relations o
ii  libisns0:amd64 0.97-2build1 amd64        Internet Storage Name Service - s
ii  libitm1:amd64  8.4.0-1ubunt amd64        GNU Transactional Memory Library
ii  libjson-c3:amd 0.12.1-1.3ub amd64        JSON manipulation library - share
ii  libk5crypto3:a 1.16-2ubuntu amd64        MIT Kerberos runtime libraries - 
ii  libkeyutils1:a 1.5.9-9.2ubu amd64        Linux Key Management Utilities (l
ii  libklibc       2.0.4-9ubunt amd64        minimal libc subset for use with 
ii  libkmod2:amd64 24-1ubuntu3. amd64        libkmod shared library
ii  libkrb5-26-hei 7.5.0+dfsg-1 amd64        Heimdal Kerberos - libraries
ii  libkrb5-3:amd6 1.16-2ubuntu amd64        MIT Kerberos runtime libraries
ii  libkrb5support 1.16-2ubuntu amd64        MIT Kerberos runtime libraries - 
ii  libksba8:amd64 1.3.5-2      amd64        X.509 and CMS support library
ii  libldap-2.4-2: 2.4.45+dfsg- amd64        OpenLDAP libraries
ii  libldap-common 2.4.45+dfsg- all          OpenLDAP common files for librari
ii  liblocale-gett 1.07-3build2 amd64        module using libc functions for i
ii  liblsan0:amd64 8.4.0-1ubunt amd64        LeakSanitizer -- a memory leak de
ii  libltdl7:amd64 2.4.6-2      amd64        System independent dlopen wrapper
ii  liblvm2app2.2: 2.02.176-4.1 amd64        LVM2 application library
ii  liblvm2cmd2.02 2.02.176-4.1 amd64        LVM2 command library
ii  liblwp-mediaty 6.02-1       all          module to guess media type for a 
ii  liblwres160:am 1:9.11.3+dfs amd64        Lightweight Resolver Library used
ii  liblxc-common  3.0.3-0ubunt amd64        Linux Containers userspace tools 
ii  liblxc1        3.0.3-0ubunt amd64        Linux Containers userspace tools 
ii  liblz4-1:amd64 0.0~r131-2ub amd64        Fast LZ compression algorithm lib
ii  liblzma5:amd64 5.2.2-1.3    amd64        XZ-format compression library
ii  liblzo2-2:amd6 2.08-1.2     amd64        data compression library
ii  libmagic-mgc   1:5.32-2ubun amd64        File type determination library u
ii  libmagic1:amd6 1:5.32-2ubun amd64        Recognize the type of data in a f
ii  libmnl0:amd64  1.0.4-2      amd64        minimalistic Netlink communicatio
ii  libmount1:amd6 2.31.1-0.4ub amd64        device mounting library
ii  libmpc3:amd64  1.1.0-1      amd64        multiple precision complex floati
ii  libmpdec2:amd6 2.4.2-1ubunt amd64        library for decimal floating poin
ii  libmpfr6:amd64 4.0.1-1      amd64        multiple precision floating-point
ii  libmpx2:amd64  8.4.0-1ubunt amd64        Intel memory protection extension
ii  libmspack0:amd 0.6-3ubuntu0 amd64        library for Microsoft compression
ii  libncurses5:am 6.1-1ubuntu1 amd64        shared libraries for terminal han
ii  libncursesw5:a 6.1-1ubuntu1 amd64        shared libraries for terminal han
ii  libnetfilter-c 1.0.6-2      amd64        Netfilter netlink-conntrack libra
ii  libnetplan0:am 0.99-0ubuntu amd64        YAML network configuration abstra
ii  libnettle6:amd 3.4-1        amd64        low level cryptographic library (
ii  libnewt0.52:am 0.52.20-1ubu amd64        Not Erik's Windowing Toolkit - te
ii  libnfnetlink0: 1.0.1-3      amd64        Netfilter netlink library
ii  libnghttp2-14: 1.30.0-1ubun amd64        library implementing HTTP/2 proto
ii  libnih1:amd64  1.0.3-6ubunt amd64        NIH Utility Library
ii  libnpth0:amd64 1.5-3        amd64        replacement for GNU Pth using sys
ii  libnss-systemd 237-3ubuntu1 amd64        nss module providing dynamic user
ii  libntfs-3g88   1:2017.3.23- amd64        read/write NTFS driver for FUSE (
ii  libnuma1:amd64 2.0.11-2.1ub amd64        Libraries for controlling NUMA po
ii  libp11-kit0:am 0.23.9-2     amd64        library for loading and coordinat
ii  libpam-cap:amd 1:2.25-1.2   amd64        POSIX 1003.1e capabilities (PAM m
ii  libpam-modules 1.1.8-3.6ubu amd64        Pluggable Authentication Modules 
ii  libpam-modules 1.1.8-3.6ubu amd64        Pluggable Authentication Modules 
ii  libpam-runtime 1.1.8-3.6ubu all          Runtime support for the PAM libra
ii  libpam-systemd 237-3ubuntu1 amd64        system and service manager - PAM 
ii  libpam0g:amd64 1.1.8-3.6ubu amd64        Pluggable Authentication Modules 
ii  libparted2:amd 3.2-20ubuntu amd64        disk partition manipulator - shar
ii  libpcap0.8:amd 1.8.1-6ubunt amd64        system interface for user-level p
ii  libpci3:amd64  1:3.5.2-1ubu amd64        Linux PCI Utilities (shared libra
ii  libpcre3:amd64 2:8.39-9     amd64        Old Perl 5 Compatible Regular Exp
ii  libperl5.26:am 5.26.1-6ubun amd64        shared Perl library
ii  libpipeline1:a 1.5.0-1      amd64        pipeline manipulation library
ii  libplymouth4:a 0.9.3-1ubunt amd64        graphical boot animation and logg
ii  libpng16-16:am 1.6.34-1ubun amd64        PNG library - runtime (version 1.
ii  libpolkit-agen 0.105-20ubun amd64        PolicyKit Authentication Agent AP
ii  libpolkit-back 0.105-20ubun amd64        PolicyKit backend API
ii  libpolkit-gobj 0.105-20ubun amd64        PolicyKit Authorization API
ii  libpopt0:amd64 1.16-11      amd64        lib for parsing cmdline parameter
ii  libprocps6:amd 2:3.3.12-3ub amd64        library for accessing process inf
ii  libpsl5:amd64  0.19.1-5buil amd64        Library for Public Suffix List (s
ii  libpython3-std 3.6.7-1~18.0 amd64        interactive high-level object-ori
ii  libpython3.6:a 3.6.9-1~18.0 amd64        Shared Python runtime library (ve
ii  libpython3.6-m 3.6.9-1~18.0 amd64        Minimal subset of the Python lang
ii  libpython3.6-s 3.6.9-1~18.0 amd64        Interactive high-level object-ori
ii  libquadmath0:a 8.4.0-1ubunt amd64        GCC Quad-Precision Math Library
ii  libreadline5:a 5.2+dfsg-3bu amd64        GNU readline and history librarie
ii  libreadline7:a 7.0-3        amd64        GNU readline and history librarie
ii  libroken18-hei 7.5.0+dfsg-1 amd64        Heimdal Kerberos - roken support 
ii  librtmp1:amd64 2.4+20151223 amd64        toolkit for RTMP streams (shared 
ii  libsasl2-2:amd 2.1.27~101-g amd64        Cyrus SASL - authentication abstr
ii  libsasl2-modul 2.1.27~101-g amd64        Cyrus SASL - pluggable authentica
ii  libsasl2-modul 2.1.27~101-g amd64        Cyrus SASL - pluggable authentica
ii  libseccomp2:am 2.4.3-1ubunt amd64        high level interface to Linux sec
ii  libselinux1:am 2.7-2build2  amd64        SELinux runtime shared libraries
ii  libsemanage-co 2.7-2build2  all          Common files for SELinux policy m
ii  libsemanage1:a 2.7-2build2  amd64        SELinux policy management library
ii  libsepol1:amd6 2.7-1        amd64        SELinux library for manipulating 
ii  libsigsegv2:am 2.12-1       amd64        Library for handling page faults 
ii  libslang2:amd6 2.3.1a-3ubun amd64        S-Lang programming library - runt
ii  libsmartcols1: 2.31.1-0.4ub amd64        smart column output alignment lib
ii  libsqlite3-0:a 3.22.0-1ubun amd64        SQLite 3 shared library
ii  libss2:amd64   1.44.1-1ubun amd64        command-line interface parsing li
ii  libssl1.0.0:am 1.0.2n-1ubun amd64        Secure Sockets Layer toolkit - sh
ii  libssl1.1:amd6 1.1.1-1ubunt amd64        Secure Sockets Layer toolkit - sh
ii  libstdc++-7-de 7.5.0-3ubunt amd64        GNU Standard C++ Library v3 (deve
ii  libstdc++6:amd 8.4.0-1ubunt amd64        GNU Standard C++ Library v3
ii  libsystemd0:am 237-3ubuntu1 amd64        systemd utility library
ii  libtasn1-6:amd 4.13-2       amd64        Manage ASN.1 structures (runtime)
ii  libtext-charwi 0.04-7.1     amd64        get display widths of characters 
ii  libtext-iconv- 1.7-5build6  amd64        converts between character sets i
ii  libtext-wrapi1 0.06-7.1     all          internationalized substitute of T
ii  libtimedate-pe 2.3000-2     all          collection of modules to manipula
ii  libtinfo5:amd6 6.1-1ubuntu1 amd64        shared low-level terminfo library
ii  libtsan0:amd64 8.4.0-1ubunt amd64        ThreadSanitizer -- a Valgrind-bas
ii  libubsan0:amd6 7.5.0-3ubunt amd64        UBSan -- undefined behaviour sani
ii  libudev1:amd64 237-3ubuntu1 amd64        libudev shared library
ii  libunistring2: 0.9.9-0ubunt amd64        Unicode string library for C
ii  libunwind8:amd 1.2.1-8      amd64        library to determine the call-cha
ii  liburi-perl    1.73-1       all          module to manipulate and access U
ii  libusb-1.0-0:a 2:1.0.21-2   amd64        userspace USB programming library
ii  libutempter0:a 1.1.6-3      amd64        privileged helper for utmp/wtmp u
ii  libuuid1:amd64 2.31.1-0.4ub amd64        Universally Unique ID library
ii  libuv1:amd64   1.18.0-3     amd64        asynchronous event notification l
ii  libwind0-heimd 7.5.0+dfsg-1 amd64        Heimdal Kerberos - stringprep imp
ii  libwrap0:amd64 7.6.q-27     amd64        Wietse Venema's TCP wrappers libr
ii  libx11-6:amd64 2:1.6.4-3ubu amd64        X11 client-side library
ii  libx11-data    2:1.6.4-3ubu all          X11 client-side library
ii  libxau6:amd64  1:1.0.8-1ubu amd64        X11 authorisation library
ii  libxcb1:amd64  1.13-2~ubunt amd64        X C Binding
ii  libxdmcp6:amd6 1:1.1.2-3    amd64        X11 Display Manager Control Proto
ii  libxext6:amd64 2:1.3.3-1    amd64        X11 miscellaneous extension libra
ii  libxml2:amd64  2.9.4+dfsg1- amd64        GNOME XML library
ii  libxmlsec1:amd 1.2.25-1buil amd64        XML security library
ii  libxmlsec1-ope 1.2.25-1buil amd64        Openssl engine for the XML securi
ii  libxmuu1:amd64 2:1.1.2-2    amd64        X11 miscellaneous micro-utility l
ii  libxslt1.1:amd 1.1.29-5ubun amd64        XSLT 1.0 processing library - run
ii  libxtables12:a 1.6.1-2ubunt amd64        netfilter xtables library
ii  libyaml-0-2:am 0.1.7-2ubunt amd64        Fast YAML 1.1 parser and emitter 
ii  libzstd1:amd64 1.3.3+dfsg-2 amd64        fast lossless compression algorit
ii  linux-aws      5.4.0.1030.1 amd64        Complete Linux kernel for Amazon 
ii  linux-aws-5.3- 5.3.0-1032.3 all          Header files related to Linux ker
ii  linux-aws-5.3- 5.3.0-1033.3 all          Header files related to Linux ker
ii  linux-aws-5.3- 5.3.0-1035.3 all          Header files related to Linux ker
ii  linux-aws-5.4- 5.4.0-1025.2 all          Header files related to Linux ker
ii  linux-aws-5.4- 5.4.0-1028.2 all          Header files related to Linux ker
ii  linux-aws-5.4- 5.4.0-1029.3 all          Header files related to Linux ker
ii  linux-aws-5.4- 5.4.0-1030.3 all          Header files related to Linux ker
ii  linux-base     4.5ubuntu1.2 all          Linux image base package
ii  linux-headers- 5.3.0-1032.3 amd64        Linux kernel headers for version 
ii  linux-headers- 5.4.0-1029.3 amd64        Linux kernel headers for version 
ii  linux-headers- 5.4.0-1030.3 amd64        Linux kernel headers for version 
ii  linux-headers- 5.4.0.1030.1 amd64        Linux kernel headers for Amazon W
ii  linux-image-5. 5.3.0-1032.3 amd64        Linux kernel image for version 5.
rc  linux-image-5. 5.3.0-1033.3 amd64        Linux kernel image for version 5.
rc  linux-image-5. 5.3.0-1035.3 amd64        Linux kernel image for version 5.
rc  linux-image-5. 5.4.0-1025.2 amd64        Linux kernel image for version 5.
rc  linux-image-5. 5.4.0-1028.2 amd64        Linux kernel image for version 5.
ii  linux-image-5. 5.4.0-1029.3 amd64        Linux kernel image for version 5.
ii  linux-image-5. 5.4.0-1030.3 amd64        Linux kernel image for version 5.
ii  linux-image-aw 5.4.0.1030.1 amd64        Linux kernel image for Amazon Web
ii  linux-libc-dev 4.15.0-126.1 amd64        Linux Kernel Headers for developm
ii  linux-modules- 5.3.0-1032.3 amd64        Linux kernel extra modules for ve
rc  linux-modules- 5.3.0-1033.3 amd64        Linux kernel extra modules for ve
rc  linux-modules- 5.3.0-1035.3 amd64        Linux kernel extra modules for ve
rc  linux-modules- 5.4.0-1025.2 amd64        Linux kernel extra modules for ve
rc  linux-modules- 5.4.0-1028.2 amd64        Linux kernel extra modules for ve
ii  linux-modules- 5.4.0-1029.3 amd64        Linux kernel extra modules for ve
ii  linux-modules- 5.4.0-1030.3 amd64        Linux kernel extra modules for ve
ii  locales        2.27-3ubuntu all          GNU C Library: National Language 
ii  login          1:4.5-1ubunt amd64        system login tools
ii  logrotate      3.11.0-0.1ub amd64        Log rotation utility
ii  lsb-base       9.20170808ub all          Linux Standard Base init script f
ii  lsb-release    9.20170808ub all          Linux Standard Base version repor
ii  lshw           02.18-0.1ubu amd64        information about hardware config
ii  lsof           4.89+dfsg-0. amd64        Utility to list open files
ii  ltrace         0.7.3-6ubunt amd64        Tracks runtime library calls in d
ii  lvm2           2.02.176-4.1 amd64        Linux Logical Volume Manager
ii  lxcfs          3.0.3-0ubunt amd64        FUSE based filesystem for LXC
ii  lxd            3.0.3-0ubunt amd64        Container hypervisor based on LXC
ii  lxd-client     3.0.3-0ubunt amd64        Container hypervisor based on LXC
ii  man-db         2.8.3-2ubunt amd64        on-line manual pager
ii  manpages       4.15-1       all          Manual pages about using a GNU/Li
ii  manpages-dev   4.15-1       all          Manual pages about using GNU/Linu
ii  mawk           1.3.3-17ubun amd64        a pattern scanning and text proce
ii  mdadm          4.1~rc1-3~ub amd64        tool to administer Linux MD array
ii  mime-support   3.60ubuntu1  all          MIME files 'mime.types' & 'mailca
ii  mlocate        0.26-2ubuntu amd64        quickly find files on the filesys
ii  mount          2.31.1-0.4ub amd64        tools for mounting and manipulati
ii  mtr-tiny       0.92-1       amd64        Full screen ncurses traceroute to
ii  multiarch-supp 2.27-3ubuntu amd64        Transitional package to ensure mu
ii  mysql-client-5 5.7.32-0ubun amd64        MySQL database client binaries
ii  mysql-client-c 5.7.32-0ubun amd64        MySQL database core client binari
ii  mysql-common   5.8+1.0.4    all          MySQL database common files, e.g.
ii  mysql-server   5.7.32-0ubun all          MySQL database server (metapackag
ii  mysql-server-5 5.7.32-0ubun amd64        MySQL database server binaries an
ii  mysql-server-c 5.7.32-0ubun amd64        MySQL database server binaries
ii  nano           2.9.3-2      amd64        small, friendly text editor inspi
ii  ncurses-base   6.1-1ubuntu1 all          basic terminal type definitions
ii  ncurses-bin    6.1-1ubuntu1 amd64        terminal-related programs and man
ii  ncurses-term   6.1-1ubuntu1 all          additional terminal type definiti
ii  net-tools      1.60+git2016 amd64        NET-3 networking toolkit
ii  netbase        5.4          all          Basic TCP/IP networking system
ii  netcat-openbsd 1.187-1ubunt amd64        TCP/IP swiss army knife
ii  netplan.io     0.99-0ubuntu amd64        YAML network configuration abstra
ii  networkd-dispa 1.7-0ubuntu3 all          Dispatcher service for systemd-ne
ii  nodejs         8.10.0~dfsg- amd64        evented I/O for V8 javascript
ii  nodejs-doc     8.10.0~dfsg- all          API documentation for Node.js, th
ii  nplan          0.99-0ubuntu all          YAML network configuration abstra
ii  ntfs-3g        1:2017.3.23- amd64        read/write NTFS driver for FUSE
ii  open-iscsi     2.0.874-5ubu amd64        iSCSI initiator tools
ii  open-vm-tools  2:11.0.5-4ub amd64        Open VMware Tools for virtual mac
ii  openssh-client 1:7.6p1-4ubu amd64        secure shell (SSH) client, for se
ii  openssh-server 1:7.6p1-4ubu amd64        secure shell (SSH) server, for se
ii  openssh-sftp-s 1:7.6p1-4ubu amd64        secure shell (SSH) sftp server mo
ii  openssl        1.1.1-1ubunt amd64        Secure Sockets Layer toolkit - cr
ii  os-prober      1.74ubuntu1  amd64        utility to detect other OSes on a
ii  overlayroot    0.40ubuntu1. all          use an overlayfs on top of a read
ii  parted         3.2-20ubuntu amd64        disk partition manipulator
ii  passwd         1:4.5-1ubunt amd64        change and administer password an
ii  pastebinit     1.5-2        all          command-line pastebin client
ii  patch          2.7.6-2ubunt amd64        Apply a diff file to an original
ii  pciutils       1:3.5.2-1ubu amd64        Linux PCI Utilities
ii  perl           5.26.1-6ubun amd64        Larry Wall's Practical Extraction
ii  perl-base      5.26.1-6ubun amd64        minimal Perl system
ii  perl-modules-5 5.26.1-6ubun all          Core Perl modules
ii  pigz           2.4-1        amd64        Parallel Implementation of GZip
ii  pinentry-curse 1.1.0-1      amd64        curses-based PIN or pass-phrase e
ii  plymouth       0.9.3-1ubunt amd64        boot animation, logger and I/O mu
ii  plymouth-theme 0.9.3-1ubunt amd64        boot animation, logger and I/O mu
ii  policykit-1    0.105-20ubun amd64        framework for managing administra
ii  pollinate      4.33-0ubuntu all          seed the pseudo random number gen
ii  popularity-con 1.66ubuntu1  all          Vote for your favourite packages 
ii  powermgmt-base 1.33         all          common utils for power management
ii  procps         2:3.3.12-3ub amd64        /proc file system utilities
ii  psmisc         23.1-1ubuntu amd64        utilities that use the proc file 
ii  publicsuffix   20180223.131 all          accurate, machine-readable list o
ii  python-apt-com 1.6.5ubuntu0 all          Python interface to libapt-pkg (l
ii  python3        3.6.7-1~18.0 amd64        interactive high-level object-ori
ii  python3-apport 2.20.9-0ubun all          Python 3 library for Apport crash
ii  python3-apt    1.6.5ubuntu0 amd64        Python 3 interface to libapt-pkg
ii  python3-asn1cr 0.24.0-1     all          Fast ASN.1 parser and serializer 
ii  python3-attr   17.4.0-2     all          Attributes without boilerplate (P
ii  python3-automa 0.6.0-1      all          Self-service finite-state machine
ii  python3-blinke 1.4+dfsg1-0. all          fast, simple object-to-object and
ii  python3-certif 2018.1.18-2  all          root certificates for validating 
ii  python3-cffi-b 1.11.5-1     amd64        Foreign Function Interface for Py
ii  python3-charde 3.0.4-1      all          universal character encoding dete
ii  python3-click  6.7-3        all          Simple wrapper around optparse fo
ii  python3-colora 0.3.7-1      all          Cross-platform colored terminal t
ii  python3-comman 18.04.5      all          Python 3 bindings for command-not
ii  python3-config 5.0.6-2      all          simple but powerful config file r
ii  python3-consta 15.1.0-1     all          Symbolic constants in Python
ii  python3-crypto 2.1.4-1ubunt amd64        Python library exposing cryptogra
ii  python3-dbus   1.2.6-1      amd64        simple interprocess messaging sys
ii  python3-debcon 1.5.66ubuntu all          interact with debconf from Python
ii  python3-debian 0.1.32       all          Python 3 modules to work with Deb
ii  python3-distro 0.18ubuntu0. all          information about distributions' 
ii  python3-distup 1:18.04.38   all          manage release upgrades
ii  python3-gdbm:a 3.6.9-1~18.0 amd64        GNU dbm database support for Pyth
ii  python3-gi     3.26.1-2ubun amd64        Python 3 bindings for gobject-int
ii  python3-httpli 0.9.2+dfsg-1 all          comprehensive HTTP client library
ii  python3-hyperl 17.3.1-2     all          Immutable, Pythonic, correct URLs
ii  python3-idna   2.6-1        all          Python IDNA2008 (RFC 5891) handli
ii  python3-increm 16.10.1-3    all          Library for versioning Python pro
ii  python3-jinja2 2.10-1ubuntu all          small but fast and easy to use st
ii  python3-json-p 1.10-1       all          resolve JSON pointers - Python 3.
ii  python3-jsonpa 1.19+really1 all          library to apply JSON patches - P
ii  python3-jsonsc 2.6.0-2      all          An(other) implementation of JSON 
ii  python3-jwt    1.5.3+ds1-1  all          Python 3 implementation of JSON W
ii  python3-markup 1.0-1build1  amd64        HTML/XHTML/XML string library for
ii  python3-minima 3.6.7-1~18.0 amd64        minimal subset of the Python lang
ii  python3-netifa 0.10.4-0.1bu amd64        portable network interface inform
ii  python3-newt:a 0.52.20-1ubu amd64        NEWT module for Python3
ii  python3-oauthl 2.0.6-1      all          generic, spec-compliant implement
ii  python3-openss 17.5.0-1ubun all          Python 3 wrapper around the OpenS
ii  python3-pam    0.4.2-13.2ub amd64        Python interface to the PAM libra
ii  python3-pkg-re 39.0.1-2     all          Package Discovery and Resource Ac
ii  python3-proble 2.20.9-0ubun all          Python 3 library to handle proble
ii  python3-pyasn1 0.4.2-3      all          ASN.1 library for Python (Python 
ii  python3-pyasn1 0.2.1-0.2    all          Collection of protocols modules w
ii  python3-reques 2.18.4-2ubun all          elegant and simple HTTP library f
ii  python3-reques 0.1.5-3      all          Use requests to talk HTTP via a U
ii  python3-serial 3.4-2        all          pyserial - module encapsulating a
ii  python3-servic 16.0.0-2     all          Service identity verification for
ii  python3-six    1.11.0-2     all          Python 2 and 3 compatibility libr
ii  python3-softwa 0.96.24.32.1 all          manage the repositories that you 
ii  python3-system 234-1build1  amd64        Python 3 bindings for systemd
ii  python3-twiste 17.9.0-2ubun all          Event-based framework for interne
ii  python3-twiste 17.9.0-2ubun amd64        Event-based framework for interne
ii  python3-update 1:18.04.11.1 all          python 3.x module for update-mana
ii  python3-urllib 1.22-1ubuntu all          HTTP library with thread-safe con
ii  python3-yaml   3.12-1build2 amd64        YAML parser and emitter for Pytho
ii  python3-zope.i 4.3.2-1build amd64        Interfaces for Python3
ii  python3.6      3.6.9-1~18.0 amd64        Interactive high-level object-ori
ii  python3.6-mini 3.6.9-1~18.0 amd64        Minimal subset of the Python lang
ii  readline-commo 7.0-3        all          GNU readline and history librarie
ii  rsync          3.1.2-2.1ubu amd64        fast, versatile, remote (and loca
ii  rsyslog        8.32.0-1ubun amd64        reliable system and kernel loggin
ii  run-one        1.17-0ubuntu all          run just one instance of a comman
ii  screen         4.6.2-1ubunt amd64        terminal multiplexer with VT100/A
ii  sed            4.4-2        amd64        GNU stream editor for filtering/t
ii  sensible-utils 0.0.12       all          Utilities for sensible alternativ
ii  shared-mime-in 1.9-2        amd64        FreeDesktop.org shared MIME datab
ii  snapd          2.45.1+18.04 amd64        Daemon and tooling that enable sn
ii  software-prope 0.96.24.32.1 all          manage the repositories that you 
ii  sosreport      3.9.1-1ubunt amd64        Set of tools to gather troublesho
ii  squashfs-tools 1:4.3-6ubunt amd64        Tool to create and append to squa
ii  ssh-import-id  5.7-0ubuntu1 all          securely retrieve an SSH public k
ii  strace         4.21-1ubuntu amd64        System call tracer
ii  sudo           1.8.21p2-3ub amd64        Provide limited super user privil
ii  systemd        237-3ubuntu1 amd64        system and service manager
ii  systemd-sysv   237-3ubuntu1 amd64        system and service manager - SysV
ii  sysvinit-utils 2.88dsf-59.1 amd64        System-V-like utilities
ii  tar            1.29b-2ubunt amd64        GNU version of the tar archiving 
ii  tcpdump        4.9.3-0ubunt amd64        command-line network traffic anal
ii  telnet         0.17-41      amd64        basic telnet client
ii  time           1.7-25.1buil amd64        GNU time program for measuring CP
ii  tmux           2.6-3ubuntu0 amd64        terminal multiplexer
ii  tzdata         2020d-0ubunt all          time zone and daylight-saving tim
ii  ubuntu-advanta 17           all          management tools for Ubuntu Advan
ii  ubuntu-keyring 2018.09.18.1 all          GnuPG keys of the Ubuntu archive
ii  ubuntu-minimal 1.417.4      amd64        Minimal core of Ubuntu
ii  ubuntu-release 1:18.04.38   all          manage release upgrades
ii  ubuntu-server  1.417.4      amd64        The Ubuntu Server system
ii  ubuntu-standar 1.417.4      amd64        The Ubuntu standard system
ii  ucf            3.0038       all          Update Configuration File(s): pre
ii  udev           237-3ubuntu1 amd64        /dev/ and hotplug management daem
ii  ufw            0.36-0ubuntu all          program for managing a Netfilter 
ii  uidmap         1:4.5-1ubunt amd64        programs to help use subuids
ii  unattended-upg 1.1ubuntu1.1 all          automatic installation of securit
ii  update-manager 1:18.04.11.1 all          manage release upgrades
ii  update-notifie 3.192.1.7    all          Files shared between update-notif
ii  ureadahead     0.100.0-21   amd64        Read required files in advance
ii  usbutils       1:007-4build amd64        Linux USB utilities
ii  util-linux     2.31.1-0.4ub amd64        miscellaneous system utilities
ii  uuid-runtime   2.31.1-0.4ub amd64        runtime components for the Univer
ii  vim            2:8.0.1453-1 amd64        Vi IMproved - enhanced vi editor
ii  vim-common     2:8.0.1453-1 all          Vi IMproved - Common files
ii  vim-runtime    2:8.0.1453-1 all          Vi IMproved - Runtime files
ii  vim-tiny       2:8.0.1453-1 amd64        Vi IMproved - enhanced vi editor 
ii  wget           1.19.4-1ubun amd64        retrieves files from the web
ii  whiptail       0.52.20-1ubu amd64        Displays user-friendly dialog box
ii  xauth          1:1.0.10-1   amd64        X authentication utility
ii  xdelta3        3.0.11-dfsg- amd64        Diff utility which works with bin
ii  xdg-user-dirs  0.17-1ubuntu amd64        tool to manage well known user di
ii  xfsprogs       4.9.0+nmu1ub amd64        Utilities for managing the XFS fi
ii  xkb-data       2.23.1-1ubun all          X Keyboard Extension (XKB) config
ii  xxd            2:8.0.1453-1 amd64        tool to make (or reverse) a hex d
ii  xz-utils       5.2.2-1.3    amd64        XZ-format compression utilities
ii  zerofree       1.0.4-1      amd64        zero free blocks from ext2, ext3 
ii  zlib1g:amd64   1:1.2.11.dfs amd64        compression library - runtime

```