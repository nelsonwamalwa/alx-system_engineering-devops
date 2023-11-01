#!/usr/bin/env ruby

# The shebang line above specifies the interpreter to be used (Ruby) when running this script.

# Print the result of searching for the pattern "^\d{10,10}$" in the first command-line argument and joining the matches.
# ARGV is an array that holds the command-line arguments passed to the script. ARGV[0] represents the first argument.
# .scan(/^\d{10,10}$/) searches for the pattern "^\d{10,10}$" in the argument.
# "^\d{10,10}$" matches strings that start and end with exactly 10 digits (0-9).
# .join combines and prints the matching occurrences as a single string.

puts ARGV[0].scan(/^\d{10,10}$/).join