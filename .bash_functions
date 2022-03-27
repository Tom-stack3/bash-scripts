libc() { ldd $1 | grep libc.so | cut -d' ' -f3; }
shepy() { sed -i '1i#!/usr/bin/env python3' $1; chmod +x $1; }

# add current working directory to the .bashrc file
add-to-bashrc() {
    printf "\n# added $PWD\nexport PATH=\"$PWD:\$PATH\"\n" >> ~/.bashrc
}
