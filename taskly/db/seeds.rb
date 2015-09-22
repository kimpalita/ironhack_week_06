# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
	{id: 1, name: 'Jon Hamm', email: 'jhamm@email.com'},
	{id: 2, name: 'Anne Hathaway', email: 'anne123@email.com'},
	{id: 3, name: 'Bill Hicks', email: 'billyboy@email.com'}
	])

