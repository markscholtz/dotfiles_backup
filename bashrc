# *****************************************************************************
# Bash customisation file
# *****************************************************************************


# -----------------------------------------------------------------------------
# Script colour variables
# -----------------------------------------------------------------------------
black='\e[0;30m'
black_bright='\e[1;30m'
red='\e[0;31m'
red_bright='\e[1;31m'
green='\e[0;32m'
green_bright='\e[1;32m'
yellow='\e[0;33m'
yellow_bright='\e[1;33m'
blue='\e[0;34m'
blue_bright='\e[1;34m'
magenta='\e[0;35m'
magenta_bright='\e[1;35m'
cyan='\e[0;36m'
cyan_bright='\e[1;36m'
white='\e[0;37m'
white_bright='\e[1;37m'
nocolor='\e[0m'


# *****************************************************************************
# General configuration starts: stuff that you always want executed
# *****************************************************************************

# -----------------------------------------------------------------------------
# Source any other required files
# -----------------------------------------------------------------------------
source ~/.config/git-completion.sh
source ~/.config/git-aliases.sh


# -----------------------------------------------------------------------------
# Set bash environment variables
# -----------------------------------------------------------------------------
export EDITOR=vim


# -----------------------------------------------------------------------------
# Aliases - shell
# -----------------------------------------------------------------------------
alias cd..="cd .."
alias ..="cd .."


# Prevent accidental deletion of files
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#alias l="ls -alp | more"
alias l="ls -alp"
alias lp="ls -p"
alias lm="ls -alp | more"
alias h=history
alias c=clear
# Aliases - shell scripts
alias colours="~/Dropbox/shellscripts/print_shell_colours.sh"
# Aliases - rails
alias ss="script/server"
alias sc="script/console"
alias sdb="script/dbconsole"
alias rr="rake routes"
# Aliases - rSpec
alias bspec="bundle exec rspec"
# Aliases - ruby gems
alias annotate="annotate -p before"
# Aliases -XCode
alias xcode="open *.xcodeproj"


# -----------------------------------------------------------------------------
# Set PATH environment variable
# -----------------------------------------------------------------------------
# Make sure mysql executable is available
PATH=$PATH:$HOME/bin:/usr/local/mysql/bin
export PATH
# Make sure git executable is available
PATH=$PATH:$HOME/bin:/usr/local/git/bin
export PATH
# Make sure exuberant Ctags executable is available
PATH="/usr/local/bin:$PATH"
# Make sure the shell scripts in my Dropbox folder are available
PATH="$HOME/Dropbox/shellscripts:$PATH"


# -----------------------------------------------------------------------------
# General bash settings
# -----------------------------------------------------------------------------
# Set profile to open up in vi editing mode
set -o vi

# Increase Size of the bash history
HISTSIZE=1000

# GIT: Changed PS1 to also show the current branch:
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ ' # original PS1 from Joerg to include the current branch being used by Git
#PS1='# [\u@\h \w$(__git_ps1 " (%s)")]\$\n'

PS1='\$ \e[0;36m\
\w\
\e[1;35m\
$(__git_ps1 " (%s)") \
\e[0;35m\
$(~/.rvm/bin/rvm-prompt)\
\e[0m\
\n'

# Colour variables in this prompt are causing issues with the git_ps1 and rvm-prompt methods
#PS1="# [\u@\h\
#$cyan\
#\w\
#$magenta_bright \
#$(__git_ps1 " (%s)") \
#$magenta \
#$(~/.rvm/bin/rvm-prompt)]\$\
#$nocolor\
#\n"

# Add colours to ls output
export CLICOLOR=1


# -----------------------------------------------------------------------------
# Auto-generated settings
# -----------------------------------------------------------------------------
# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator


# *****************************************************************************
# General configuration ends
# *****************************************************************************





# *****************************************************************************
# Test shell type and perform any customisation based on this below
# Idea taken from: http://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/
# *****************************************************************************
if [[ -n $PS1 ]]; then
  : # These are executed only for interactive shells
  echo "interactive"
else
  : # Only for NON-interactive shells
fi

if shopt -q login_shell ; then
  : # These are executed only when it is a login shell
  echo "login"
else
  : # Only when it is NOT a login shell
  echo "nonlogin"
fi
