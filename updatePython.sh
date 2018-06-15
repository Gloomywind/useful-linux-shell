#!/bin/bash
yum install -y zlib-devel bzip2-devel xz-libs wget openssl openssl-devel gcc gcc-c++ autoconf automake
wget http://www.python.org/ftp/python/2.7.12/Python-2.7.12.tar.xz
xz -d Python-2.7.12.tar.xz
tar -xvf Python-2.7.12.tar
cd Python-2.7.12
./configure --prefix=/usr/local
make altinstall
mv /usr/bin/python /usr/bin/python2.6.6
ln -s -f /usr/local/bin/python2.7 /usr/bin/python
sed -i 's/#!\/usr\/bin\/python/#!\/usr\/bin\/python2.6.6/g' /usr/bin/yum

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
ln -s -f /usr/local/bin/pip2.7 /usr/bin/pip
