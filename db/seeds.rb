# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.delete_all
Country.create!(name: 'UK', flag: 'https://upload.wikimedia.org/wikipedia/en/a/ae/Flag_of_the_United_Kingdom.svg', size: 242495, language: 'English', population: 64511000, currency: "£", exchange_rate: 1)
Country.create!(name: 'USA', flag: 'https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg', size: 9857306, language: 'English', population: 322014853, currency: "$", exchange_rate: 1.53)
Country.create!(name: 'Finland', flag: 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Finland.svg', size: 338424, language: 'Finnish', population: 5489097, currency: "€", exchange_rate: 1.39)
Country.create!(name: 'Russia', flag: 'https://upload.wikimedia.org/wikipedia/en/f/f3/Flag_of_Russia.svg', size: 17098242, language: 'Russian', population: 143975923, currency: "Ruble", exchange_rate: 100)
Country.create!(name: 'Japan', flag: 'https://upload.wikimedia.org/wikipedia/en/9/9e/Flag_of_Japan.svg', size: 377944, language: 'Japanese', population: 126919659, currency: '¥', exchange_rate: 184)

uk = Country.first
usa = Country.first(2).last
fin = Country.first(3).last
rus = Country.first(4).last
jap = Country.first(5).last


City.create!(name: 'Edinburgh', population: 492680, country: uk)
City.create!(name: 'London', population: 8358869, country: uk)
City.create!(name: 'Helsinki', population: 602305, country: fin)
City.create!(name: 'New York', population: 88491049, country: usa)
City.create!(name: 'Tokyo', population: 13230000, country: jap)
City.create!(name: 'Moscow', population: 11918457, country: rus)
City.create!(name: 'Turku', population: 185322, country: fin)