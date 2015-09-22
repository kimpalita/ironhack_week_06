# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
	{name: 'Kim', email: 'kim@mail.com', password: 'hikim', password_confirmation: 'hikim', role: 'admin'},
	{name: 'Jon', email: 'jon@mail.com', password: 'hijon', password_confirmation: 'hijon', role: 'user'},
	{name: 'Mat', email: 'mat@mail.com', password: 'himat', password_confirmation: 'himat', role: 'user'}
	])

users[0].tasks.create([
		{ name: 'Buy groceries', completion_date: Time.now, status: 'done' },
		{ name: 'Buy more groceries', completion_date: Time.now, status: 'doing' },
	])

users[1].tasks.create([
		{ name: 'Clean room', completion_date: Time.now, status: 'done' },
		{ name: 'Clean other room', completion_date: Time.now, status: 'doing' },
	])

users[2].tasks.create([
		{ name: 'Cook dinner', completion_date: Time.now, status: 'done' },
		{ name: 'Wash dishes', completion_date: Time.now, status: 'doing' },
	])
