export ZSH="/home/lan/.oh-my-zsh"


ZSH_THEME="bira"


plugins=(
  git
)


source $ZSH/oh-my-zsh.sh


# i3wm 启动
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx


# anaconda 相关
export PATH="/home/lan/anaconda3/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:/home/lan/anaconda3/lib/python3.6/site-packages


# 自己的翻译小工具
alias w="python ~/repos/words/words.py"


# change caps & ctrl
setxkbmap -option ctrl:swapcaps


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# pipenv complete
export PATH="/home/lan/.local/bin:$PATH"
eval "$(pipenv --completion)"
