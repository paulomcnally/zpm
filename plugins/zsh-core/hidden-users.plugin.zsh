if [[ $OSTYPE == "linux"* || $OSTYPE == *"bsd"* ]]; then
  users=($(cat /etc/passwd|awk -F':' '{ if ( $3>999 && $3<64999 ) { print $1 } }'|xargs))
  zstyle ':completion:*:*:*:users' users $users
else
  zstyle ':completion:*:*:*:users' ignored-patterns \
  adm amanda apache avahi beaglidx bin cacti canna clamav daemon \
  dbus distcache dovecot fax ftp games gdm gkrellmd gopher \
  hacluster haldaemon halt hsqldb ident junkbust ldap lp mail \
  mailman mailnull mldonkey mysql nagios \
  named netdump news nfsnobody nobody nscd ntp nut nx openvpn \
  operator pcap postfix postgres privoxy pulse pvm quagga radvd \
  rpc rpcuser rpm shutdown squid sshd sync uucp vcsa xfs \
  polkitd rtkit nbd dnsmasq mpd uuidd sddm usbmux colord git http \
  lxc-dnsmasq avahi-autoipd nm-openvpn solr kernoops lightdm \
  man geoclue messagebus saned gnats usermetrics hplip sys \
  backup dhcpd irc syslog proxy list www-data \
  '_*' 'systemd-*'
fi

zstyle ':completion:*:*:*:groups' ignored-patterns \
bin daemon sys adm tty disk lp mem kmem wheel ftp mail uucp log \
utmp locate rfkill smmsp proc http games lock uuidd dbus network video audio optical floppy \
storage scanner input power nobody git polkitd dnsmasq sddm avahi rtkit mysql colord docker \
cdrom dip lpadmin plugdev sambashare sudo \
'_*' 'systemd-*'


zstyle '*' single-ignored show
