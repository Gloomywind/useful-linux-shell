#!/bin/bash
yum install -y zlib-devel bzip2-devel xz-libs wget openssl openssl-devel gcc gcc-c++ autoconf automake
wget http://www.python.org/ftp/python/2.7.12/Python-2.7.12.tar.xz
xz -d Python-2.7.12.tar.xz
tar -xvf Python-2.7.12.tar
cd Python-2.7.12
./configure --prefix=/usr/local
make altinstall
mv /usr/bin/python /usr/bin/python2.6.6
ln -s /usr/local/bin/python2.7 /usr/bin/python
sed -i 's/#!\/usr\/bin\/python/#!\/usr\/bin\/python2.6.6/g' /usr/bin/yum

wget https://pypi.python.org/packages/f7/94/eee867605a99ac113c4108534ad7c292ed48bf1d06dfe7b63daa51e49987/setuptools-28.0.0.tar.gz
tar -xvf setuptools-28.0.0.tar.gz
cd setuptools-28.0.0
python setup.py install
wget https://pypi.python.org/packages/e7/a8/7556133689add8d1a54c0b14aeff0acb03c64707ce100ecd53934da1aa13/pip-8.1.2.tar.gz
tar -xvf pip-8.1.2.tar.gz
cd pip-8.1.2
python setup.py install
ln -s /usr/local/bin/pip2.7 /usr/bin/pip
