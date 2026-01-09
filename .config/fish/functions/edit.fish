function edit
  set filename $argv[1]
  set selection (fd -H $filename | fzf --style=full:rounded --preview='batcat -p --color=always {}')

  if test "$argv[1]" = ""
    nvim $selection
    echo "[$selection]"
  else
    echo "Nothing file selected"
    echo $selection
  end
end
