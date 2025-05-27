# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'
# Convert date_applied to string for pretty output
pp @candidates.map { |c| c.merge(date_applied: c[:date_applied].to_s) }


## Your test code can go here
sample_experienced1 = { years_of_experience: 1}
puts experienced?(sample_experienced1)

sample_experienced2 = { years_of_experience: 3}
puts experienced?(sample_experienced2)

sample_find1 = find(5)
puts sample_find1

sample_find2 = find(9)
puts sample_find2