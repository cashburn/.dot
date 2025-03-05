ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}> #%{$reset_color%}"; else echo %{$fg[green]%}" > $"; fi
}

if [[ "$(uname -s)" == "SunOS" ]]; then
PROMPT='%(?, ,%{$fg[red]%}FAIL%{$reset_color%}
)
%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: %{$fg_bold[magenta]%}%~%{$reset_color%}
%_ $(prompt_char) '

else
PROMPT='%(?, ,%{$fg[red]%}FAIL%{$reset_color%}
)
%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: %{$fg_bold[magenta]%}%~%{$reset_color%}$(git_prompt_info)
$(prompt_char) '
fi

RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
