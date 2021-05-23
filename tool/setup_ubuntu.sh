# /bin/sh -x
# At ubuntu-20.04.2.0

path_Ubuntu="/etc/lsb-release"
  if [ -e $path_Ubuntu ];
  then
    cat $path_Ubuntu;
  else
    echo "Ubuntu?";exit;
  fi

SETUP_SSH="on"

# apt config
# apt-config dump|grep -i sug
# apt-config dump|grep -i rec
# cat /etc/apt/apt.conf.d/* | grep -e Rec
# cat /etc/apt/apt.conf.d/* | grep -e Sug
# sudo cp /etc/apt/apt.conf.d/00aptitude /etc/apt/apt.conf.d/999yesrecommend
# APT::Install-Suggests "1";
# APT::Install-Recommends "1";

# setting ssh 
if [ ${SETUP_SSH} == "on" ];
then
  echo setup_ssh
  sudo apt install openssh-server
  ssh -V
  for list in `ls /etc/ssh/*.pub`; do echo ssh-keygen -lf ${list} ;ssh-keygen -lf ${list} ; done
fi


sudo apt install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git


# virtual machine
apt -y install virt-manager qemu-system






