# /bin/sh -x
# http://uxmilk.jp/13610

path_CentOS="/etc/redhat-release"
path_Ubuntu="/etc/lsb-release"
path_Debian="/etc/debian_version"
path_Fedore="/etc/fedora-release"

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


