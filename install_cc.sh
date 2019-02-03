
#!/bin/bash

export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

mkdir $HOME/opt
mkdir $HOME/opt/cross

mkdir $HOME/clinl_cc_build___
cd $HOME/clinl_cc_build___
wget https://ftp.gnu.org/gnu/binutils/binutils-2.31.tar.xz
wget ftp://ftp.fu-berlin.de/unix/languages/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.xz

tar xf ./binutils-2.31.tar.xz
tar xf ./gcc-7.3.0.tar.xz

mkdir build_binutils
cd build_binutils

../binutils-2.31/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install

cd ..
mkdir build_gcc
cd build_gcc

../gcc-7.3.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc

rm -rf $HOME/clinl_cc_build___
