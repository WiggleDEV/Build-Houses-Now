#!/bin/bash
echo -e "Installing dependencies, press Enter if asked for input"
sleep 5
apt-get update && apt-get upgrade && apt-get -y install software-properties-common && apt-get -y install build-essential  && apt-get -y install libtool autotools-dev autoconf automake  && apt-get -y install libssl-dev && apt-get -y install libevent-dev && apt-get -y install libboost-all-dev && apt-get -y install pkg-config  && add-apt-repository ppa:bitcoin/bitcoin && apt-get update && apt-get -y install libdb4.8-dev && apt-get -y install libdb4.8++-dev && apt-get -y install libminiupnpc-dev libzmq3-dev libevent-pthreads-2.0-5 && apt-get -y install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev && apt-get -y install libqrencode-dev bsdmainutils && apt install git && cd /var && touch swap.img && chmod 600 swap.img && dd if=/dev/zero of=/var/swap.img bs=1024k count=2000 && mkswap /var/swap.img && swapon /var/swap.img && echo '/var/swap.img none swap sw 0 0 ' >> /etc/fstab && cd ~
echo -e "Setting permissions"
chmod 755 ./autogen.sh 
chmod 755 ./share/genbuild.sh
chmod 755 ./src/leveldb/build_detect_platform
./autogen.sh
./configure
echo -e "Actual compiling starts now, this will take a while so grab a beer"
make
mkdir ~/.bhn
touch ~/.bhn/bhn.conf
rpcpassword=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
cat <<EOF > ~/.bhn/bhn.conf 
rpcuser=bhnrpc
rpcpassword=$rpcpassword
addnode=149.28.13.32:20001
addnode=217.163.23.58:20001
addnode=207.148.74.89:20001
addnode=45.32.198.42:20001
addnode=144.202.22.102:20001
addnode=45.76.199.91:20001
addnode=45.63.100.202:20001
addnode=49.28.204.132:20001
EOF
cd src/
echo -e "Compiling complete"
echo -e "Starting daemon"
./bhnd --daemon
