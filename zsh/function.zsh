function git-clean-branch() {
    local -a ignore_branches
    ignore_branches=('develop' 'master')
    for b in $(git branch --merged | grep -v '*'); do
        if (( ! ${ignore_branches[(I)$b]} )); then
            git branch -d $b
        fi
    done
}
