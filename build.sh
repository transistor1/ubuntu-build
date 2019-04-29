#!/bin/bash

build_src() {

case "$1" in
libusb)
cd /src/libusb

./autogen.sh

./configure --prefix=/usr

checkinstall --backup=no --install=no --maintainer "svrusso1\@gmail.com" --pkgname=libusb-1.0-0 --pkgversion="2:1.0.23-rc1" --provides="libusb-1.0-0" --conflicts="libusb-1.0-0" --replaces="libusb-1.0-0,libusb-1.0-0-dev" --requires="libc6,libudev1" make install
;;
usbredir)
cd /src/usbredir

./autogen.sh

./configure --prefix=/usr

checkinstall --backup=no --install=no --maintainer "svrusso1\@gmail.com" --pkgname=libusbredirparser1 --pkgversion="0.8.0" --provides="libusbredirparser1" --conflicts="libusbredirparser1,usbredirserver,libusbredirhost-dev,libusbredirparser-dev,libusbredirhost1" --replaces="libusbredirparser1,usbredirserver,libusbredirhost-dev,libusbredirparser-dev,libusbredirhost1" --requires="libc6" make install 
;;
qemu)
cd /src/qemu

./configure --prefix=/usr && checkinstall --backup=no --install=no --pkgname "qemu-kvm" --pkgrelease 1 --maintainer "svrusso1\@gmail.com" --pkgversion "1:4.0-rc4-git-master-20190417-1" --provides "qemu-kvm" --conflicts "qemu-kvm,qemu-utils,qemu-system-x86,qemu-system-common,qemu-system-data,ipxe-qemu" --replaces "qemu-kvm,qemu-utils,qemu-system-x86,qemu-system-common,qemu-system-data,ipxe-qemu" --requires "acl,cpu-checker,fontconfig-config,fonts-liberation,gstreamer1.0-plugins-base,ipxe-qemu-256k-compat-efi-roms,libaio1,libasound2,libasound2-data,libbluetooth3,libbrlapi0.6,libbz2-1.0,libcacard0,libcairo2,libcap2,libcap-ng0,libcdparanoia0,libcurl3-gnutls,libcurl4,libfdt1,libfontconfig1,libglib2.0-0,libgstreamer1.0-0,libgstreamer-plugins-base1.0-0,libgtk-3-0,libibverbs1,libiscsi7,libjpeg8,libjpeg-turbo8,liblzo2-2,libncurses5,libnfs11,libnuma1,libogg0,libopus0,liborc-0.4-0,libpcsclite1,libpixman-1-0,librbd1,librdmacm1,libsasl2-2,libsdl1.2debian,libseccomp2,libsnappy1v5,libspice-server1,libssh2-1,libtheora0,libusbredirparser1,libvde0,libvdeplug2,libvisual-0.4-0,libvorbis0a,libvorbisenc2,libxcb-render0,libxcb-shm0,libxen-4.9,libxrender1,msr-tools,seabios,sharutils,zlib1g,libusb-1.0-0,libudev1,libsdl2-2.0-0,sparse,libgbm1,libepoxy0,libvte-2.91-0,libgnutlsxx28,libtasn1-6,libnettle6,libpam0g,libvirglrenderer0,libxml2" make install -j20 
;;
esac
}

build_src libusb
apt-get install --reinstall /src/libusb/*.deb -y
build_src usbredir
apt-get install --reinstall /src/usbredir/*.deb -y
build_src qemu


 
