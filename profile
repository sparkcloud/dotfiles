. ~/.bashrc

if [ -n "$TMUX" ]
then
  :
else
  scripts/enter-default-tmux
fi
