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


sample_gitpoints1 = { github_points: 99 }
puts enough_github_points?(sample_gitpoints1)

sample_gitpoints2 = { github_points: 101 }
puts enough_github_points?(sample_gitpoints2)


sample_languages1 = { languages: ["Javascript", "Go"] }
puts knows_ruby_or_python?(sample_languages1)

sample_languages2 = { languages: ["Javascript", "Ruby"] }
puts knows_ruby_or_python?(sample_languages2)

sample_languages3 = { languages: ["Javascript", "Python"] }
puts knows_ruby_or_python?(sample_languages3)


sample_recent1 = { date_applied: Date.today - 16 }
puts recent_applicant?(sample_recent1)

sample_recent2 = { date_applied: Date.today - 14 }
puts recent_applicant?(sample_recent2)

sample_age1 = { age: 17 }
puts old_enough?(sample_age1)

sample_age2 = { age: 18 }
puts old_enough?(sample_age2)