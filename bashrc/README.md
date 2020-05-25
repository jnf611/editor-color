# Add these lines in bashrc
# commanted commands need to be adapted

# git prompt and completion from https://github.com/git/git/tree/master/contrib/completion
source ~/.git-prompt.sh
source ~/.git-completion.bash

## note: completion need a new git feature which might not yet be integrated to ubuntu repository
it needs at least git 2.18
therefore, git official repositoty should be used instead:
sudo apt-add-repository ppa:git-core/ppa
sudo apt update
sudo apt upgrade

# customise prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[1;33m\]$(__git_ps1 "(%s)")\[\033[00m\]\n$ '

# aliases for git
alias gitka='gitk --all'
alias gitkan='gitk --all -n 500'
alias gitl='git log --abbrev-commit --pretty=oneline -20'
alias gitcl='killall wish'
__git_complete gitco _git_checkout
alias gitco='git checkout'
alias gitcp='git cherry-pick'
alias gitcpc='git cherry-pick --continue'
alias gitcpa='git cherry-pick --abort'
alias gitgr='git grep -iIn'
alias gitrc='git rebase --continue'
alias gitra='git rebase --abort'
#alias gitaa='git commit --amend --author=julien.fromeyer@faurecia.com'
GIT_PS1_SHOWDIRTYSTATE=TRUE

# git function (alias cannot take parameters)
function gitr {
    git rebase -i HEAD~$1
}

# command adaptation
alias jdf='df -h | grep -i "/home\|/mnt\|Filesystem"'
alias jgrep='grep -rIns'
#alias cdtmp='cd /mnt/build3/tmp'
alias cddown='cd ~/Downloads'
alias llu='ll /dev/ttyU*'
function mkcd {
    mkdir $1
    if [[ $?==0 ]]; then
        cd $1
    fi
}
