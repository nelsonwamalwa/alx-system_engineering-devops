#!/usr/bin/env ruby

# The shebang line above specifies the interpreter to be used (Ruby) when running this script.

# Print the result of searching for the pattern in the first command-line argument and joining the matches with commas.
# ARGV is an array that holds the command-line arguments passed to the script. ARGV[0] represents the first argument.
# .scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/) searches for the specific pattern.
# \[from:(.*?)\] matches data enclosed in [from:(...)] and captures it into the first group.
# \[to:(.*?)\] matches data enclosed in [to:(...)] and captures it into the second group.
# \[flags:(.*?)\] matches data enclosed in [flags:(...)] and captures it into the third group.
# .join(",") combines and prints the matching occurrences with commas between the captured groups.

puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")