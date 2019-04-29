# Docker Container for Building QEMU, libusb, libusbredir on Ubuntu Cosmic

This contains all of the requirements to build QEMU, libusb, and libusbredir on Cosmic.

May not work on any other host operating system.

To build automatically:
```
docker run -ti -v `pwd`/src:/src ubuntu-build
```

To enter shell for debugging, fixup, etc.:
```
docker run -ti -v `pwd`/src:/src ubuntu-build bash
```
