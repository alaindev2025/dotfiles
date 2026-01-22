set -gx EDITOR nvim
set -gx VISUAl nvim
set -gx PAGER less
set -U fish_greeting
# set -g fish_vi_key_bindings

if status is-interactive
    if type -q fastfetch
        # fastfetch
    end
end

if type -q zoxide
    zoxide init fish | source
end

if type -q starship
    starship init fish | source
end

if type -q atuin
    atuin init fish | source
end
