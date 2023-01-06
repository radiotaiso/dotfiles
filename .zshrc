# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$(whoami)/.oh-my-zsh"

# go/Lyftenv
PATH=$PATH:/Users/uriel/.lyftkube-bin
export PATH=$HOME/src/lyftvenv/bin:$PATH 
eval "$(/opt/homebrew/bin/aactivator init)"
# This secret line of code will help us 
# save a fuck ton of cpu sorry employer wasnt me 
#         .-"""-.
#        /       \
#        \       /
# .-"""-.-`.-.-.<  _
#/      _,-\ ()()_/:)
#\     / ,  `     `|
# '-..-| \-.,___,  /
#       \ `-.__/  /
#        `-.__.-'`
alias killCode24="sudo launchctl unload /Library/LaunchDaemons/com.code42.service.plist"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="lambda-uriel"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

ZSH_DISABLE_COMPFIX="true"

# TODO: Clean dis up pls, new alias file?
# Lyft
alias runlyft="aws-okta exec zimride-client-team-access-readonly -- runlyft"
alias lyftkube="aws-okta exec zimride-sudo-developer -- lyftkube"
alias precommit="pre-commit run --all-files"
# misc
alias ll="exa -hal --color=always --group-directories-first"
alias maccpumetrics="sudo powermetrics --samplers smc |grep -i 'CPU die temperature'"
alias macgpumetrics="sudo powermetrics --samplers smc |grep -i 'GPU die temperature'"
alias nukenpm="rm -rf node_modules/ && rm package-lock.json"
alias ptm="sudo !!"
alias cat="bat --paging=never"
alias vim="nvim"
# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias diff='git diff'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead
alias glog="git log --oneline --decorate --graph"

### Functions

# usage: mkfile path/to/file.wav
mkfile() {mkdir -p $(sed 's/\(.*\)\/.*/\1/' <<< $1) && touch $1}

# This function saves lives. thank god is stored here f o r e v e r.
# usage: compresspdf path/to/bigfile.pdf path/to/smolfile.pdf ebook
compresspdf() {
    echo 'Usage: compresspdf [input file] [output file] [screen|ebook|printer|prepress]'
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


### lyft_localdevtools_shell_rc start
### DO NOT REMOVE: automatically installed as part of Lyft local dev tool setup
if [[ -f "/opt/homebrew/Library/Taps/lyft/homebrew-localdevtools/scripts/shell_rc.sh" ]]; then
    source "/opt/homebrew/Library/Taps/lyft/homebrew-localdevtools/scripts/shell_rc.sh"
fi
### lyft_localdevtools_shell_rc end
