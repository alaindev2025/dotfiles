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
complete -c calcr -n "__fish_calcr_needs_command" -f -a "add" -d 'Add two numbers'
complete -c calcr -n "__fish_calcr_needs_command" -f -a "sub" -d 'Substract two numbers'
complete -c calcr -n "__fish_calcr_needs_command" -f -a "mul" -d 'Multiplies two numbers'
complete -c calcr -n "__fish_calcr_needs_command" -f -a "div" -d 'Divisies two numbers'
complete -c calcr -n "__fish_calcr_needs_command" -f -a "print-config" -d 'Prints the config'
complete -c calcr -n "__fish_calcr_needs_command" -f -a "completion" -d 'Generates completions for shell'
complete -c calcr -n "__fish_calcr_needs_command" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c calcr -n "__fish_calcr_using_subcommand add" -s q -l quiet -d 'Just print the result (without `Result:`)'
complete -c calcr -n "__fish_calcr_using_subcommand add" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_using_subcommand sub" -s q -l quiet -d 'Just print the result (without `Result:`)'
complete -c calcr -n "__fish_calcr_using_subcommand sub" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_using_subcommand mul" -s q -l quiet -d 'Just print the result (without `Result:`)'
complete -c calcr -n "__fish_calcr_using_subcommand mul" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_using_subcommand div" -s q -l quiet -d 'Just print the result (without `Result:`)'
complete -c calcr -n "__fish_calcr_using_subcommand div" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_using_subcommand print-config" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_using_subcommand completion" -s h -l help -d 'Print help'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from add sub mul div print-config completion help" -f -a "add" -d 'Add two numbers'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from add sub mul div print-config completion help" -f -a "sub" -d 'Substract two numbers'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from add sub mul div print-config completion help" -f -a "mul" -d 'Multiplies two numbers'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from add sub mul div print-config completion help" -f -a "div" -d 'Divisies two numbers'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from add sub mul div print-config completion help" -f -a "print-config" -d 'Prints the config'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from add sub mul div print-config completion help" -f -a "completion" -d 'Generates completions for shell'
complete -c calcr -n "__fish_calcr_using_subcommand help; and not __fish_seen_subcommand_from add sub mul div print-config completion help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
