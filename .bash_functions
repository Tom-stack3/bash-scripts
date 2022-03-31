libc() { ldd $1 | grep libc.so | cut -d' ' -f3; }
shepy() { sed -i '1i#!/usr/bin/env python3' $1; chmod +x $1; }

# add current working directory to the .bashrc file
add-to-bashrc() {
    printf "\n# added $PWD\nexport PATH=\"$PWD:\$PATH\"\n" >> ~/.bashrc
}

# inspired by: https://www.youtube.com/watch?v=1bWtXEOCpLM
tmpclip() { # save clipboard to a temporary file
    mkdir -p "$HOME/.cache/xsel/" && echo "$(xsel -b)" >> "$HOME/.cache/xsel/clipboard.txt"
}

gtmpclip() { # get temporary clipboard history
    echo -n $(cat "$HOME/.cache/xsel/clipboard.txt" | fzf --tac) | xsel --clipboard
}

upcp() { # upload file to 0x0.st and copy link to clipboard
    curl -sF "file=@$1" 0x0.st | xsel --clipboard 
}
