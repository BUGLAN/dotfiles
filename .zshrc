export ZSH="/home/neo/.oh-my-zsh"


ZSH_THEME="bira"


plugins=(
git
)

# change caps & ctrl
setxkbmap -option ctrl:swapcaps

source $ZSH/oh-my-zsh.sh


# i3wm 启动
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx


# anaconda 相关
# export PATH=/home/neo/anaconda3/bin:$PATH
# export PYTHONPATH=$PYTHONPATH:/home/neo/anaconda3/lib/python3.6/site-packages
# alias python=/home/neo/anaconda3/bin/python
# alias pip=/home/neo/anaconda3/bin/pip
# alias pip3=/usr/bin/pip
# alias python3=/usr/bin/python

# miniconda
# export PATH=/home/neo/miniconda3//bin:$PATH
# export PYTHONPATH=$PYTHONPATH:/home/neo/miniconda3//lib/python3.6/site-packages
# alias pipa=/home/neo/miniconda3/bin/pip

# 自己的翻译小工具
# alias w="python ~/repos/words/words.py"
# alias t="python ~/repos/tools/youdaotranslate/youdaotranslate/main.py"
# alias word="nvim ~/repos/notes/English/words.md"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# neo python path
export PATH="/home/neo/.local/bin:$PATH"

# pipenv complete
eval "$(pipenv --completion)"

# export PATH="/usr/bin:$PATH"
# export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.7/site-packages
# pipenv with anaconda3
# pipenv --python path/to/anaconda/bin/python

# go env
# export GOROOT=/usr/lib/go
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOPATH/bin


# repeat fast
xset r rate 250 40

# autojump
source /usr/share/autojump/autojump.zsh

# cow
# export http_proxy=http://127.0.0.1:7777
# export https_proxy=http://127.0.0.1:7777


# pip source
# https://pypi.tuna.tsinghua.edu.cn/simple
# https://pypi.doubanio.com/simple


# python path
# export PATH="/usr/bin:$PATH"

# save path on cd
function cd {
    builtin cd $@
    pwd > ~/.last_dir
}

# restore last saved path
if [ -f ~/.last_dir ]
then cd `cat ~/.last_dir`
fi

# rust path
# export PATH="/home/neo/.cargo/bin:$PATH"
# export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"


# thefuck
# eval $(thefuck --alias)

# tmux
# export TERM=xterm-256color
# alias tnew="tmux new -s"
