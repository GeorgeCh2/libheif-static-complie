#!/bin/bash
INSTALL_ROOT=`pwd`
SRC_DIR=`pwd`/../libheif-1.6.2
INSTALL_DIR=`pwd`/heif

if [ -d ${INSTALL_DIR} ]
then
    rm -rf ${INSTALL_DIR}
fi

pushd ${SRC_DIR}

./autogen.sh
export PKG_CONFIG_PATH="${INSTALL_ROOT}/de265/lib/pkgconfig"

./configure CPPFLAGS="-I${INSTALL_ROOT}/jpeg/include" \
            LDFLAGS="-L${INSTALL_ROOT}/jpeg/lib64" \
            --prefix=${INSTALL_DIR} \
            --enable-static \
            --disable-shared 
        
make clean
make -j4
make install 

popd;