function fish_greeting
end

fish_vi_key_bindings

bind -M insert \cl forward-char

export FZF_DEFAULT_OPTS="
--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker='*'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o nvim)'
--bind 'ctrl-v:execute(code {+})'
"
