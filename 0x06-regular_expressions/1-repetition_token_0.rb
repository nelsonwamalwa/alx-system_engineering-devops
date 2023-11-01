#!/usr/bin/env ruby

# The shebang line above specifies the interpreter to be used (Ruby) when running this script.

# Print the result of searching for the pattern "hbt{2,5}n" in the first command-line argument and joining the matches.
# ARGV is an array that holds the command-line arguments passed to the script. ARGV[0] represents the first argument.
# .scan(/hbt{2,5}n/) searches for the pattern "hbt{2,5}n" in the argument.
# "hbt{2,5}n" matches "hbn," "hbtn," "hbttn," "hbttnn," and "hbtttnnn" with 2 to 5 't' characters in between 'h' and 'n'.
# .join combines and prints the matching occurrences as a single string.

puts ARGV[0].scan(/hbt{2,5}n/).join