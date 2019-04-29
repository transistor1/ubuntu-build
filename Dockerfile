FROM ubuntu:cosmic-20190311

RUN apt-get update


RUN apt-get install -y apt-utils autoconf automake bison build-essential checkinstall flex git git-email libaio-dev libaio-dev libasound2-data libasound2-dev libbluetooth3-dev libbluetooth-dev libbrlapi-dev libbrlapi-dev libbz2-dev libcacard-dev libcairo2-dev libcap-dev libcap-ng-dev libcdparanoia0-dev libcurl4-gnutls-dev libfdt-dev libfontconfig1-dev libglib2.0-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgtk-3-dev libibverbs-dev libiscsi-dev libjpeg8-dev libjpeg-turbo8-dev liblzo2-dev libncurses5-dev libnfs-dev libnuma-dev libogg-dev libopus-dev liborc-0.4-dev libpcsclite-dev libpixman-1-dev librbd-dev librdmacm-dev libsasl2-dev libsdl1.2-dev libseccomp-dev libsnappy-dev libspice-server-dev libssh2-1-dev libtheora-dev libtool libusbredirparser-dev libvde-dev libvdeplug-dev libvisual-0.4-dev libvorbis-dev libvte-dev libxcb-render0-dev libxcb-shm0-dev libxen-dev libxrender-dev valgrind vim xfslibs-dev zlib1g-dev libusb-1.0-0-dev libudev-dev libsdl2-dev sparse libepoxy-dev libgbm-dev libvte-2.91-dev libgnutls28-dev libtasn1-6-dev nettle-dev libpam-dev libvirglrenderer-dev libxml2-dev

ADD build.sh /tools/build.sh
ADD clone.sh /tools/clone.sh
ADD all.sh /tools/all.sh

CMD ["bash","-c","/tools/all.sh"]




