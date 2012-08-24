### modules
if [ -f /usr/local/etc/profile.d/modules.sh ]
then
  source /usr/local/etc/profile.d/modules.sh
fi

if [ -f /etc/profile.modules ]
then
  . /etc/profile.modules
  # put your own module loads here
  # module load null
fi

### macports
export PATH=/opt/local/bin:/opt/local/sbin:$PATH


### gsissh
export GLOBUS_LOCATION=${HOME}/local/site/gt5
source ${GLOBUS_LOCATION}/etc/globus-user-env.sh

### local
PATH=$PATH:$HOME/bin


### Ruby RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if $(type rvm-prompt&>/dev/null); then 
  PS1="$(rvm-prompt i u g) "
fi

### shf3
source $HOME/shf3/bin/shfrc
# set the prompt
shf3/ps1 "${PS1}✚"
# set framework features
shf3/alias yes
shf3/screen yes
shf3/mc/color yes
shf3/ls/color yes

alias passkey="passmgr -f shf3/sql/acc.sqlite -t acc -a acc"


### shf3 modules
source $HOME/shf3.osx/bin/shfrc
source $HOME/shf3.flex/bin/shfrc
source $HOME/shf3.py/bin/shfrc
source $HOME/shf3.vre/bin/shfrc
source $HOME/pyf3/bin/pyfrc


### modules
module purge
module use ${HOME}/site/eszr/mod/common
module load eszr/local
module load eszr/env/local
module load eszr/sys/local/osx
module use ${HOME}/site/eszr/mod/local
module use ${HOME}/site/eszr/mod/webdev
