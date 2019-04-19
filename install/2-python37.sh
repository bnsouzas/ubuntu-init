#!/bin/sh
PYTHON37_VERSION="3.7.3"
apt-get install -y build-essential checkinstall libffi-dev libreadline-gplv2-dev \
    libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev \
    libbz2-dev zlib1g-dev libncurses5-dev libdb5.3-dev libexpat1-dev liblzma-dev

cd /usr/src
rm -rf Python-$PYTHON37_VERSION
wget https://www.python.org/ftp/python/$PYTHON37_VERSION/Python-$PYTHON37_VERSION.tgz
tar xzf Python-$PYTHON37_VERSION.tgz
rm Python-$PYTHON37_VERSION.tgz
cd Python-$PYTHON37_VERSION
./configure --enable-optimizations --with-lto
make -j8 build_all
make -j8 altinstall

#pip3
curl -O https://bootstrap.pypa.io/get-pip.py
python3.7 get-pip.py --user
rm -f /etc/profile.d/local-bin.sh
echo "export PATH=~/.local/bin:$PATH" >> /etc/profile.d/local-bin.sh
python3.7 -V
pip3 -V
