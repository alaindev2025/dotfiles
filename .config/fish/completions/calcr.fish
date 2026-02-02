# Print an optspec for argparse to handle cmd's options that are independent of any subcommand.
function __fish_calcr_global_optspecs
	string join \n h/help V/version
end

function __fish_calcr_needs_command
	# Figure out if the current invocation already has a command.
	set -l cmd (commandline -opc)
	set -e cmd[1]
	argparse -s (__fish_calcr_global_optspecs) -- $cmd 2>/dev/null
	or return
	if set -q argv[1]
		# Also print the command, so this can be used to figure out what it is.
		echo $argv[1]
		return 1
	end
	return 0
end

function __fish_calcr_using_subcommand
	set -l cmd (__fish_calcr_needs_command)
	test -z "$cmd"
	and return 1
	contains -- $cmd[1] $argv
end

complete -c calcr -n "__fish_calcr_needs_command" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_needs_command" -s V -l version -d 'Print version'
complete -c calcr -n "__fish_calcr_needs_command" -a "version" -d 'Display version information'
complete -c calcr -n "__fish_calcr_needs_command" -a "completion" -d 'Generate shell completions'
complete -c calcr -n "__fish_calcr_needs_command" -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c calcr -n "__fish_calcr_using_subcommand version" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_using_subcommand completion" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from version completion help" -f -a "version" -d 'Display version information'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from version completion help" -f -a "completion" -d 'Generate shell completions'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from version completion help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
