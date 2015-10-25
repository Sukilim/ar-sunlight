require_relative 'person'
require_relative 'senator'
require_relative 'rep'
require_relative '../../db/config'
require_relative '../../lib/sunlight_legislators_importer'
require 'byebug'

#Question 1
# puts "Senators: "
# a = Senator.select("title, firstname, lastname, party").order('lastname asc').where(state: 'NY', title: 'Sen')
# a.each do |x|
# 	puts x[:title] + " " + x[:firstname] + " " + x[:lastname] + "(" + x[:party] + ")"
# end

# puts "Representatives: "
# b = Rep.select("title, firstname, lastname, party").order('lastname asc').where(state: 'NY', title: 'Rep')
# b.each do |x|
# 	puts x[:title] + " " + x[:firstname] + " " + x[:lastname] + "(" + x[:party] + ")"
# end

#Question 2
# sen_in_office = Senator.where(gender: 'M', in_office: "1", title: 'Sen').count
# divide_macho_sen = Senator.where(gender: 'M').count
# answer = (sen_in_office/divide_macho_sen.to_f)*100
# 	puts "Male " + "Senators: " + "#{sen_in_office}" + "(#{answer}%)" 

# rep_in_office = Rep.where(gender: 'M', in_office: "1", title: 'Rep').count
# divide_macho_rep = Rep.where(gender: 'M').count
# answer = (rep_in_office/divide_macho_rep.to_f)*100
# 	puts "Male " + "Representatives: " + "#{rep_in_office}" + "(#{answer}%)" 

#Question 3
puts "Senator: "
p count_sen = Senator.select(:state).where(in_office: 1).group(:state).count
count_sen.each do |key, value|
p value.sort_by 
end
puts "Representatives: "
p count_rep = Rep.select(:state).where(in_office: 1).group(:state).count

" #{count_rep}: "
#Question 4
# p Senator.where(title: "Sen").count
# p Rep.where(title: "Rep").count

#Question 5
# delete_now = Senator.where(title: 'Sen', in_office: 0)
# delete_now.each do |del|
# del.destroy
# end
# a = Senator.where(title: 'Sen').count
# puts "Senator: " + "#{a}"

# delete_now = Rep.where(title: 'Rep', in_office: 0)
# delete_now.each do |del|
# del.destroy
# end
# b = Rep.where(title: 'Rep').count
# puts "Representatives: " + "#{b}"

# p Person.count






