source ~/.bashrc
## -----------------------------------------------------------------------------
## |                            Bash Settings                                  |
## |                       	 Personal Sessings							  	              |
## -----------------------------------------------------------------------------
#source ~/.config/git-completion.sh
#source ~/.config/git-aliases.sh
#
## Set bash environment variables **********************************************
#export EDITOR=vim
#
## Aliases *********************************************************************
#alias cd..="cd .."
#alias l="ls -alp"
#alias lp="ls -p"
#alias h=history
#alias c=clear
#alias colours="~/Dropbox/shellscripts/print_shell_colours.sh"
## Aliases - Rails
#alias ss="script/server"
#alias sc="script/console"
#alias sdb="script/dbconsole"
#alias rr="rake routes"
## Aliases - RSpec
#alias bspec="bundle exec rspec"
## Aliases - Ruby Gems
#alias annotate="annotate -p before"
## Aliases -XCode
#alias xcode="open *.xcodeproj"
#
## PATH ************************************************************************
## PATH Environment Variable
## Make sure mysql executable is available
#PATH=$PATH:$HOME/bin:/usr/local/mysql/bin
#export PATH
#
## Make sure git executable is available
#PATH=$PATH:$HOME/bin:/usr/local/git/bin
#export PATH
#
## Make sure exuberant Ctags executable is available
#PATH="/usr/local/bin:$PATH"
#
## Make sure the shell scripts in my Dropbox folder are available
#PATH="$HOME/Dropbox/shellscripts:$PATH"
#
## Other ***********************************************************************
## Set profile to open up in vi editing mode
#set -o vi
#
## Increase Size of the bash history
#HISTSIZE=1000
#
## GIT: Changed PS1 to also show the current branch:
##PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ ' # original PS1 from Joerg to include the current branch being used by Git
##PS1='# [\u@\h \w$(__git_ps1 " (%s)")]\$\n'
#PS1='# [\u@\h\
#\e[0;36m\
#\w\
#\e[m\
#$(__git_ps1 " (%s)") \
#$(~/.rvm/bin/rvm-prompt)]\$\n'
#
#
## -----------------------------------------------------------------------------
## |                            Bash Settings                                  |
## |                           Custom Methods                                  |
## -----------------------------------------------------------------------------
#function ttt
#{
#  echo 'test test test'
#}
#
#function cd
#{
#  echo 'blah blah blah'
#  # actually change the directory with all args passed to the function
#  builtin cd "$@"
#  # if there's a regular file named "todo.txt"...
#  if [ -f "todo.txt" ] ; then
#    # display its contents
#    cat todo.txt
#  fi
#}
#
#
## -----------------------------------------------------------------------------
## |                            Bash Settings                                  |
## |                       Auto-generated Sessings                             |
## -----------------------------------------------------------------------------
#
## MacPorts ********************************************************************
###
## Your previous /Users/mark/.bash_profile file was backed up as /Users/mark/.bash_profile.macports-saved_2010-09-06_at_17:26:53
###
#
## MacPorts Installer addition on 2010-09-06_at_17:26:53: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
## Finished adapting your PATH environment variable for use with MacPorts.
#
## RVM *************************************************************************
## RVM Post Install
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
#[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
