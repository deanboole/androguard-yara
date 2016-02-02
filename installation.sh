#autoconf libtool libjansson-dev

wget https://github.com/plusvic/yara/archive/v3.4.0.tar.gz
tar xvzf v3.4.0.tar.gz


cp androguard.c yara-3.4.0/libyara/modules
cp module_list yara-3.4.0/libyara/modules
cp Makefile.am yara-3.4.0/libyara/


cd yara-3.4.0
sudo ./bootstrap.sh
sudo ./configure --enable-cuckoo
sudo make
sudo make install
