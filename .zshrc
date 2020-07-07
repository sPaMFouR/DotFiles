# =================================================================================================
#
#                       B888889b.            888b     d888
#                        889   888           8888b   d8888
#               .d88889  888   888  8888b.   888Y8b.d8P888
#              889      B888888P"      888b  888 Y888P 888
#              'd8889D.  888       .d888888  888  Y8P  888
#                   889  888       88   888  888   '   888
#            o 888889D'  888       'd888888  888       888
#
# =================================================================================================


# -------------------------------------------------------------------------------------------------
# Paths
# -------------------------------------------------------------------------------------------------
export PATH="/home/avinash/Softwares/anaconda2/bin:$PATH"   # Python2.7 path
export PATH="/home/avinash/Softwares/miniconda3/bin:$PATH"  # Python3.7 path
#export PATH=/home/avinash/Softwares/fv:$PATH                # FITS Viewer
export ZSH="/home/avinash/.oh-my-zsh"                       # Path to 'oh-my-zsh' installation

ZSH_THEME="robbyrussell"                                    # Set Zsh theme
DISABLE_UPDATE_PROMPT="true"                                # Automatically upgrade without prompt
COMPLETION_WAITING_DOTS="true"                              # Display red dots while waiting
ZSH_DISABLE_COMPFIX="true"
# ZSH_THEME_RANDOM_CANDIDATES=("robbyrussell" "powerlevel9k/powerlevel9k")
# -------------------------------------------------------------------------------------------------


# -------------------------------------------------------------------------------------------------
# Antigen
# -------------------------------------------------------------------------------------------------
source $HOME/antigen.zsh

antigen use oh-my-zsh                                       # Load 'oh-my-zsh' library
antigen bundle pip
antigen bundle git
antigen bundle tmux

antigen bundle ael-code/zsh-colored-man-pages               # Colored manual pages
antigen theme robbyrussell                                  # Load Zsh theme

antigen apply

plugins=(dircolors-solarized)
source $ZSH/oh-my-zsh.sh
# -------------------------------------------------------------------------------------------------


# -------------------------------------------------------------------------------------------------
#
# -------------------------------------------------------------------------------------------------
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# -------------------------------------------------------------------------------------------------


# -------------------------------------------------------------------------------------------------
# Powerlevel9k Theme Settings
# -------------------------------------------------------------------------------------------------
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate middle"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('user' 'dir' 'dir_writable')
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('status' 'ram' 'time' 'ssh')
# -------------------------------------------------------------------------------------------------


# -------------------------------------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------------------------------------
alias xgterm='ds9 & xgterm -sb -sl 2048 -fn 9x15 -title "Image Reduction and Analysis Facility (IRAF)" -geometry 100x80 -fg white -bg black -e cl &'
alias charm='bash /home/avinash/Softwares/pycharmv2.3/bin/pycharm.sh &'     # PyCharm
alias desktop='ssh -X Avinash@192.168.11.23'                                # Remote Login Desktop
alias delphinus='ssh -X avinash@delphinus'
alias rico='ssh -X asingh@rico.caltech.edu'
alias transient='ssh -X asingh@transient.caltech.edu'
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# -------------------------------------------------------------------------------------------------


# -------------------------------------------------------------------------------------------------
# IRAF
# -------------------------------------------------------------------------------------------------
export IMTDEV=inet:5137
# -------------------------------------------------------------------------------------------------


# -------------------------------------------------------------------------------------------------
# MESA
# -------------------------------------------------------------------------------------------------
# export MESASDK_ROOT=/home/avinash/Softwares/mesa/mesasdk
# source $MESASDK_ROOT/bin/mesasdk_init.sh
# 
# export MESA_DIR=/home/avinash/Softwares/mesa/mesa-r10108
# export OMP_NUM_THREADS=4
# --------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------
# Prompt For RobbyRussell Theme
# --------------------------------------------------------------------------------------------------
if [ "$USER" = "root" ]; 
then
    PROMPT="$fg_bold[red]%}$USER ${PROMPT}"
else
    PROMPT="$fg_bold[blue]%}$USER ${PROMPT}"
fi
# --------------------------------------------------------------------------------------------------
