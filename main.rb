# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'
# Convert date_applied to string for pretty output
pp @candidates.map { |c| c.merge(date_applied: c[:date_applied].to_s) }


## Your test code can go here