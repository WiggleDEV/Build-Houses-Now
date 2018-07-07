Welcome to the official github of Build Houses Now, powered by the cryptocurrency BHN.

To compile from scratch:

apt-get update && apt-get upgrade && apt-get -y install software-properties-common && apt-get -y install build-essential  && apt-get -y install libtool autotools-dev autoconf automake  && apt-get -y install libssl-dev && apt-get -y install libevent-dev && apt-get -y install libboost-all-dev && apt-get -y install pkg-config  && add-apt-repository ppa:bitcoin/bitcoin && apt-get update && apt-get -y install libdb4.8-dev && apt-get -y install libdb4.8++-dev && apt-get -y install libminiupnpc-dev libzmq3-dev libevent-pthreads-2.0-5 && apt-get -y install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev && apt-get -y install libqrencode-dev bsdmainutils && apt install git && cd /var && touch swap.img && chmod 600 swap.img && dd if=/dev/zero of=/var/swap.img bs=1024k count=2000 && mkswap /var/swap.img && swapon /var/swap.img && echo '/var/swap.img none swap sw 0 0 ' >> /etc/fstab && cd ~

cd ~

git clone https://github.com/WiggleDEV/Build-Houses-Now && cd Build-Houses-Now && bash bhncompiler.sh
