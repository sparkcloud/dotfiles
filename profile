. ~/.bashrc

if [ -n "$TMUX" ]
then
  :
else
  exec scripts/enter-default-tmux
fi
