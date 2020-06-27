EDITOR=nano
VISUAL=nano

export LC_CTYPE=en_US.UTF-8

PATH=$PATH:/usr/local/sbin

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ ⌥ (\1)/'
}

export PS1="\[$(tput bold)\]\[\033[38;5;161m\][\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\w\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;161m\]]\[$(tput sgr0)\]\$(parse_git_branch)\[\033[00m\]$ "

alias kssh='ssh -o GlobalKnownHostsFile=/dev/null -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias skey='pbcopy < ~/.ssh/id_rsa.pub'

alias kali='ssh root@192.168.85.128'
alias kalistart='vmrun start ~/vm/Kali-Linux-2017.2-vm-amd64/Kali-Linux-2017.2-vm-amd64.vmx nogui & disown'
alias sub='open -a "Sublime Text"'
alias forklift-ssh='ssh-add -K ~/.ssh/my_rsa_private_key'

#ADDED BY 010 EDITOR
export PATH="$PATH:/Applications/010 Editor.app/Contents/CmdLine"

