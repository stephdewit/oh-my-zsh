# Based on robbyrussell.zsh-theme

function ssh_connection()
{
	if [[ -n $SSH_CONNECTION ]]; then
		echo "%{$fg_bold[yellow]%m "
	fi
}

PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p $(ssh_connection)%{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
