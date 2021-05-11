# /bin/sh -x

name_session="test"`date +%Y%m%d%H%M%S`
name_window="core"
echo ${name_session}
if [ -z `tmux ls | grep ${name_session}` ]; then
  tmux new -d -s ${name_session} -n ${name_window}
else 
  exit 1;
fi

tmux split-window -v -t ${name_session}:${name_window}.0
tmux split-window -v -t ${name_session}:${name_window}.0

tmux send-keys -t ${name_session}:${name_window}.0 'echo ssh host0' C-m
tmux send-keys -t ${name_session}:${name_window}.1 'echo ssh host1' C-m
tmux send-keys -t ${name_session}:${name_window}.2 'echo ssh host2' C-m


exit 0;



