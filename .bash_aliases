# launch Ghidra
alias ghidra='~/Apps/ghidra/ghidraRun'

# take a nap (suspend the system)
alias nap='systemctl suspend'

# launch apktool
alias apktool='java -jar ~/Apps/apktool/apktool.jar'

# lanuch pwninit with a custom template
alias pwninit='~/Apps/pwninit/pwninit --template-path ~/.config/pwninit-template.py'

# get sorted disk usage for current working directory
alias gdu='du -shl * | sort -h'

# start firefox
alias ffp='firefox -private-window &'

# delete branches no longer on remote
# from: https://stackoverflow.com/questions/7726949/remove-tracking-branches-no-longer-on-remote
alias gitlodel='git fetch -p && for branch in $(git for-each-ref --format '\''%(refname) %(upstream:track)'\'' refs/heads | awk '\''$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'\''); do git branch -D $branch; done'

# remove tracking branches no longer on remote
alias gitredel='git remote prune origin'

# nvim
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
