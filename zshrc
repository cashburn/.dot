# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


ZSH_THEME="cashburn"


# CASE_SENSITIVE="true"
  ENABLE_CORRECTION="true"
  COMPLETION_WAITING_DOTS="true"
  HIST_STAMPS="yyyy-mm-dd"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git gitfast github zsh-syntax-highlighting web-search dirhistory common-aliases zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh



# User configuration

export PATH="/homes/cashburn/bin/.amd64-linux:/homes/cashburn/bin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/x86_64-pc-linux-gnu/gcc-bin/4.7.3:/usr/games/bin:."
# export MANPATH="/usr/local/man:$MANPATH"




#Personal configuration

DATE=`date +%Y-%m-%d`

function mkcd { mkdir -pv "$1" && cd "$1"; } # mkdir then cd
function mkgit { mkcd "$1" && git init && git remote add origin "https://github.com/cashburn/$1.git"; } # mkcd then git init
function gitpull { git pull "https://github.com/cashburn/$1.git" && git remote add origin "https://github.com/cashburn/$1.git"; }
function gitpush { git add . && git commit -m "$DATE" && git push;}
function gitrm { git rm `git ls-files --deleted`; }
function rmclass { find . -type f -name "*.class" -exec rm -f {} \; }
function edit { pluma $1 & ;}
function drjava { java -jar ~/.dot/drjava.jar $1 & ;}


#source ~/.oh-my-zsh/custom/plugins/git-completion/git-prompt.sh
#source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

#DIR_COLORS="$HOME/.dir_colors"
#dircolors $DIR_COLORS
export LS_COLORS='rs=0:di=01;36:ln=01;35:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.pdf=00;32:*.ps=00;32:*.txt=00;32:*.patch=00;32:*.diff=00;32:*.log=00;32:*.tex=00;32:*.doc=00;32:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:*.java=00;33:*.c=00;33:*.cp=00;33:'
# You may need to manually set your language environment
  export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='pluma'
 fi




# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"





# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias i="~/bin/dirinfo"
alias cd180="cd ~/cs180"
alias zshrc="pluma ~/.zshrc &"
















export PATH=${PATH}:/p/android-sdk/tools
export PATH=${PATH}:/p/android-sdk/platform-tools
