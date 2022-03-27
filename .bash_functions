libc() { ldd $1 | grep libc.so | cut -d' ' -f3; }
shepy() { sed -i '1i#!/usr/bin/env python3' $1; chmod +x $1; }
