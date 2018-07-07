#!/bin/bash
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
