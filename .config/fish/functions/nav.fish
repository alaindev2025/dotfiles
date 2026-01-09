function nav
  set preview '[ -f {} ] && bat --color=always --plain {} || exa --color=always -F {}'
  set color 'list-border:red,prompt:red,spinner:red,input-border:red,preview-border:red'  

  fdfind . | fzf \
    --style=full:rounded \
    --preview=$preview \
    --preview-window=right:60% \
    --bind="alt-e:execute(nvim {})+accept" \
    --color=$color
end
