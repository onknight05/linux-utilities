#!/bin/bash

# alias git-stash-withname="git stash push -m "
alias git-stash-withname="git stash save "
alias git-stash-list="git stash list"
function git_stash_apply_id() {
    ID=${1}
    git stash apply stash@{${ID}}
}
alias git-stash-apply-id="git_stash_apply_id"

alias git-del-local-branch="git branch -d "
alias git-del-remote-branch="git push -d origin "
