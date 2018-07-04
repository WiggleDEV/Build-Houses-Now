#!/bin/bash
echo -e "Setting permissions"
chmod +x autogen.sh 
chmod +x share/genbuild.sh
chmod +x src/leveldb/build_detect_platform
./autogen.sh
./configure
echo -e "Actual compiling starts now, this will take a while so grab a beer"
make
cd src/

cat <<EOF > ~/.bhn/bhn.conf 
rpcuser=bhnrpc > ~./bhn/bhn.conf
rpcpassword=rpcpass
addnode=149.28.13.32:20001
addnode=217.163.23.58:20001
addnode=207.148.74.89:20001
addnode=45.32.198.42:20001
addnode=144.202.22.102:20001
addnode=45.76.199.91:20001
addnode=45.63.100.202:20001
addnode=49.28.204.132:20001
EOF
echo -e "Compiling complete"
echo -e "To run the daemon: ./bhnd --daemon"
echo -e "./bhn-cli to use the wallet after it's synced"



