#!/usr/bin/env ruby

# The shebang line above specifies the interpreter to be used (Ruby) when running this script.

# Print the result of searching for the pattern [A-Z]* in the first command-line argument and joining the matches.
# ARGV is an array that holds the command-line arguments passed to the script. ARGV[0] represents the first argument.
# .scan(/[A-Z]*/) searches for the pattern [A-Z]* in the argument.
# [A-Z]* matches zero or more consecutive uppercase letters.
# .join combines and prints the matching occurrences as a single string.

puts ARGV[0].scan(/[A-Z]/).join