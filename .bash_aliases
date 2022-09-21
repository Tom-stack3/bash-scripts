# take a nap (suspend the system)
alias nap='systemctl suspend'

# lanuch pwninit with a custom template
alias pwninit='~/Apps/pwninit/pwninit --template-path ~/.config/pwninit-template.py'

# get sorted disk usage for current working directory
alias gdu='du -shl * | sort -h'

# delete branches no longer on remote
# from: https://stackoverflow.com/questions/7726949/remove-tracking-branches-no-longer-on-remote
alias gitlodel='git fetch -p && for branch in $(git for-each-ref --format '\''%(refname) %(upstream:track)'\'' refs/heads | awk '\''$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'\''); do git branch -D $branch; done'

# remove tracking branches no longer on remote
alias gitredel='git remote prune origin'
