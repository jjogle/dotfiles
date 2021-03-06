#export PATH=~/bin::$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH
#eval "$(rbenv init -)"
#export PATH="./bin:$PATH"

for a in `ls $HOME/.bash_profile.d/*.sh`; do
  source $a
done

export VISUAL=`first_of "vi -w atom --wait" "subl -w" "mate -w" "nano -w"`
export EDITOR=$VISUAL
#export GIT_EDITOR=`first_of "atom --wait" "mate -wl1" "nano -w" vi`

ulimit -n 10240

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
