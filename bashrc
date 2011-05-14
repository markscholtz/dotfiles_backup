# *****************************************************************************
# Bash customisation file
# *****************************************************************************





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
alias l="ls -alp"
alias lp="ls -p"
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
PS1='# [\u@\h\
\e[0;36m\
\w\
\e[m\
$(__git_ps1 " (%s)") \
$(~/.rvm/bin/rvm-prompt)]\$\n'


# -----------------------------------------------------------------------------
# Custom bash methods
# -----------------------------------------------------------------------------
function ttt
{
  echo 'test test test'
}

function cd
{
  echo 'blah blah blah'
  # actually change the directory with all args passed to the function
  builtin cd "$@"
  # if there's a regular file named "todo.txt"...
  if [ -f "todo.txt" ] ; then
    # display its contents
    cat todo.txt
  fi
}


# -----------------------------------------------------------------------------
# Auto-generated settings
# -----------------------------------------------------------------------------
# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion


# *****************************************************************************
# General configuration ends
# *****************************************************************************





# *****************************************************************************
# Test shell type and perform any customisation based on this below
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
