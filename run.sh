#!/bin/bash

#install tRNAscan-SE
tar -xzf tRNAscan-SE-1.3.1.tar.gz
cd tRNAscan-SE-1.3.1/
make
sudo make install
make testrun
make clean

#change ownership of the module directory
sudo chown `whoami` ${HOME}/bin/tRNAscanSE
chmod 755 ${HOME}/bin/tRNAscanSE
