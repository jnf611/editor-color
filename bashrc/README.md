# Add these lines in bashrc

# git prompt and completion from https://github.com/git/git/tree/master/contrib/completion
source ~/.git-prompt.sh
source ~/.git-completion.bash

## note: completion need a new git feature which might not yet be integrated to ubuntu repository
therefore, git official repositoty should be used instead:
sudo apt-add-repository ppa:git-core/ppa
sudo apt update
sudo apt upgrade
https://apple.stackexchange.com/questions/327817/git-completion-bash-producing-error-on-macos-sierra-10-12-6

# customise prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[1;33m\]$(__git_ps1 "(%s)")\[\033[00m\]\n$ '

# aliases for git
alias gitka='gitk --all'
alias gitl='git log --abbrev-commit --pretty=oneline -20'
alias gitcl='killall wish'
__git_complete gitco _git_checkout
alias gitco='git checkout'
alias gitcp='git cherry-pick'
alias gitgr='git grep -iIn'
alias gitrc='git rebase --continue'
alias gitra='git rebase --abort'
GIT_PS1_SHOWDIRTYSTATE=TRUE
