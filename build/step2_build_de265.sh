#!/bin/bash
SRC_DIR=`pwd`/../libde265-1.0.5
INSTALL_DIR=`pwd`/de265

if [ -d ${INSTALL_DIR} ]
then
    rm -rf ${INSTALL_DIR}
fi

pushd ${SRC_DIR}

./autogen.sh
./configure --prefix=${INSTALL_DIR} \
            --enable-static \
            --disable-shared \
            --disable-encoder \
            --enable-log-error \
            --disable-dec265 \
            --disable-sherlock265

make clean
make -j4
make install

popd;