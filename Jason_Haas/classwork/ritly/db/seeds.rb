# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Adding some sample Tinylinks"
Tinylink.create [
	{
		link: "http://www.generalassemb.ly",
		hash: "34234"
	},
	{
		link: "http://www.google.com",
		hash: "53242"
	}]