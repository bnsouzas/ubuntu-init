#!/bin/sh
apt-get install -y build-essential checkinstall libffi-dev libreadline-gplv2-dev \
    libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev \
    libbz2-dev zlib1g-dev libncurses5-dev libdb5.3-dev libexpat1-dev liblzma-dev

cd /usr/src
rm -rf Python-3.7.3
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar xzf Python-3.7.3.tgz
rm Python-3.7.3.tgz
cd Python-3.7.3
./configure --enable-optimizations --with-lto
make -j8 build_all
make -j8 altinstall 
python3.7 -V