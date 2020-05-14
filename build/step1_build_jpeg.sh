#!/bin/bash
SRC_DIR=`pwd`/../libjpeg-turbo-2.0.4
INSTALL_DIR=`pwd`/jpeg

if [ -d ${INSTALL_DIR} ]
then
    rm -rf ${INSTALL_DIR}
fi

pushd ${SRC_DIR}

rm -rf CMakeCache.txt
cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} -DENABLE_SHARED=OFF -DBUILD_SHARED_LIBS=OFF -DENABLE_CLI=OFF 

make clean
make -j4
make install

popd;