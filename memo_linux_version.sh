# /bin/sh -x
# http://uxmilk.jp/13610

if [ `ls /etc/lsb-release` != 0 ];
then
cat /etc/lsb-release
elif [ `ls /etc/redhat-release` != 0 ];
then
cat /etc/redhat-release
fi
