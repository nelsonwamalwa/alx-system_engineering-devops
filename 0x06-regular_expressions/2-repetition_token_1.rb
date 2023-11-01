#!/usr/bin/env ruby

# The shebang line above specifies the interpreter to be used (Ruby) when running this script.

# Print the result of searching for the pattern "hb?t?n" in the first command-line argument and joining the matches.
# ARGV is an array that holds the command-line arguments passed to the script. ARGV[0] represents the first argument.
# .scan(/hb?t?n/) searches for the pattern "hb?t?n" in the argument.
# "hb?t?n" matches "hbn," "hbtn," "hbtnn," "hbbtn," and similar patterns with optional 't' characters.
# .join combines and prints the matching occurrences as a single string.
puts ARGV[0].scan(/hb?t?n/).join
