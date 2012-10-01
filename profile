. ~/.bashrc

if [ -n "$TMUX" ]
then
  :
else
  $SCRIPT_DIR/enter-default-tmux
fi
