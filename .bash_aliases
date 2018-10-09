alias git_clean="git checkout master && git pull && git branch --merged master | grep -v \"\* master\" | xargs -n 1 git branch -d"

