#!/usr/bin/env ruby
print ARGV[0].scan(/\[from:(\+?\w+)/).join, ","
print ARGV[0].scan(/\[to:(\+?\d+)/).join, ","
puts ARGV[0].scan(/\[flags:([\-?\d:]+)/).join
