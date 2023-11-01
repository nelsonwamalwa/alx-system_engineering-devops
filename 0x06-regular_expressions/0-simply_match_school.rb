#!/usr/bin/env ruby

# The shebang line above specifies the interpreter to be used (Ruby) when running this script.

# Print the result of searching for the exact string "School" in the first command-line argument and joining the matches.
# ARGV is an array that holds the command-line arguments passed to the script. ARGV[0] represents the first argument.
# .scan(/School/) searches for the exact string "School" in the argument.
# .join combines and prints the matching occurrences as a single string.

puts ARGV[0].scan(/School/).join
