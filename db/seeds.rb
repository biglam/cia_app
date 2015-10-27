# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.delete_all
Country.create!(name: 'UK', flag: 'https://upload.wikimedia.org/wikipedia/en/a/ae/Flag_of_the_United_Kingdom.svg', size: 242495, language: 'English', population: 64511000)
Country.create!(name: 'USA', flag: 'https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg', size: 9857306, language: 'English', population: 322014853)
Country.create!(name: 'Finland', flag: 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Finland.svg', size: 338424, language: 'English', population: 5489097)