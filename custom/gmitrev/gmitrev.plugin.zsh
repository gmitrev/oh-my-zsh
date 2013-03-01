alias tlog='tail -f log/development.log'
alias cdp='cd ~/code/rb/pms'

c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# autocorrect is more annoying than helpful
unsetopt correct_all

export PATH="$(dirname $0)/bin:$PATH"
