# /bin/sh -x
# http://uxmilk.jp/13610
# https://qiita.com/UmedaTakefumi/items/fe02d17264de6c78443d

name_mac_os="Darwin"
name_linux_os="Linux"
name_win="MINGW32_Nj"

path_CentOS="/etc/redhat-release"
path_Ubuntu="/etc/lsb-release"
path_Debian="/etc/debian_version"
path_Fedore="/etc/fedora-release"

if [ "$(uname -s)" == ${name_mac_os} ];
then
  echo mac
  uname -v
elif [ "$(uname -s)" == ${name_linux_os} ];
then
  if [ -e $path_CentOS ];
  then
    cat $path_CentOS;
  elif [ -e $path_Ubuntu ];
  then
    cat $path_Ubuntu;
  elif [ -e $path_Debian];
  then
    cat $path_Debian;
  elif [ -e $path_Fedore ];
  then
    cat $path_Fedore;
  fi
  cat /proc/version
  uname -r
fi



