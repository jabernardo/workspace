if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	if [ tmux has-session -t $session ] 2>/dev/null; then
		exec tmux attach
	else
		exec tmux
	fi
fi
