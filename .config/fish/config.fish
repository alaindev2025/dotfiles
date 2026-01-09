set -gx EDITOR nvim
set -gx VISUAl nvim
set -gx PAGER less
set -U fish_greeting

if type -q zoxide 
  zoxide init fish | source
end

# if type -q oh-my-posh
#   oh-my-posh init fish -c "~/storage/omp/atomic.omp.json" | source
# end

if type -q starship
  starship init fish | source
end

if type -q atuin
  atuin init fish | source
end
