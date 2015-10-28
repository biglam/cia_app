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


City.create!(name: 'Edinburgh', population: 492680, photo: 'http://images.hotels-world.com/2//org/825/hotelPhoto/425_Barcelo_Edinburgh_Carlton_Hotel.jpg', country_id: uk.id)
City.create!(name: 'London', population: 8358869, country_id: uk.id)
City.create!(name: 'Helsinki', photo: 'http://foto.hrsstatic.com/fotos/0/3/256/256/80/000000/http%3A%2F%2Ffoto-origin.hrsstatic.com%2Ffoto%2F0%2F0%2F1%2F1%2F001111%2F001111_u_10279971.jpg/pEAnPIk8uTN2C5daRmnyug%3D%3D/640,427/6/HOTEL_SEURAHUONE_HELSINKI-Helsinki-Info-7-1111.jpg',population: 602305, country_id: fin.id)
City.create!(name: 'New York', photo: 'https://pbs.twimg.com/profile_images/587571943513137152/amdnGVqf_400x400.jpg', population: 88491049, country_id: usa.id)
City.create!(name: 'Tokyo', population: 13230000, country_id: jap.id)
City.create!(name: 'Moscow', population: 11918457, country_id: rus.id)
City.create!(name: 'Turku', population: 185322, country_id: fin.id)