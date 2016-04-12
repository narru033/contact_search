# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |c|
	Contact.create(name: "#{(0...6).map { (65 + rand(26)).chr }.join}-#{c}", number: "#{rand(10 ** 10)}")
end

Puts "------------ Created Contact list ---------------"