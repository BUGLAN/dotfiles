export ZSH="/home/lan/.oh-my-zsh"


ZSH_THEME="bira"


plugins=(
  git
)


source $ZSH/oh-my-zsh.sh


# i3wm 启动
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx


# anaconda 相关
# export PATH="/home/lan/anaconda3/bin:$PATH"
# export PYTHONPATH=$PYTHONPATH:/home/lan/anaconda3/lib/python3.6/site-packages
# alias python='/usr/bin/python3.6'
# alias pip='/usr/bin/pip'
export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.7/site-packages


# 自己的翻译小工具
alias w="python ~/repos/words/words.py"
alias t="python ~/repos/tools/youdaotranslate/youdaotranslate/main.py"

# neovim
alias n="nvim"

# change caps & ctrl
setxkbmap -option ctrl:swapcaps


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'


# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# pipenv complete
export PATH="/home/lan/.local/bin:$PATH"
eval "$(pipenv --completion)"
# export PATH="/usr/bin:$PATH"
# export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.6/site-packages
# https://pypi.tuna.tsinghua.edu.cn/simple

# goland env
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin


# repeat fast
xset r rate 250 40

# autojump
source /usr/share/autojump/autojump.zsh

# cow
# export http_proxy=http://127.0.0.1:7777
# export https_proxy=http://127.0.0.1:7777
