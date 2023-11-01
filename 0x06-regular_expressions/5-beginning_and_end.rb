#!/usr/bin/env ruby

# The shebang line above specifies the interpreter to be used (Ruby) when running this script.

# Print the result of searching for the pattern "^h.n$" in the first command-line argument and joining the matches.
# ARGV is an array that holds the command-line arguments passed to the script. ARGV[0] represents the first argument.
# .scan(/^h.n$/) searches for the pattern "^h.n$" in the argument.
# "^h.n$" matches strings that start with "h," followed by any single character, and then followed by "n."
# .join combines and prints the matching occurrences as a single string.

puts ARGV[0].scan(/^h.n$/).join