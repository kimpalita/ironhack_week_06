# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = Player.create name:'do', favorite_faction: 'Team A'
b = Player.create name:'re', favorite_faction: 'Team B'
c = Player.create name:'mi', favorite_faction: 'Team C'
d = Player.create name:'so', favorite_faction: 'Team A'
e = Player.create name:'la', favorite_faction: 'Team B'
f = Player.create name:'ti', favorite_faction: 'Team C'

Match.create winner_id: '1', loser_id: '2', winner_faction: 'protoss', loser_faction: 'terrans'
Match.create winner_id: '3', loser_id: '4', winner_faction: 'zerg', loser_faction: 'protoss'
Match.create winner_id: '5', loser_id: '6', winner_faction: 'terrans', loser_faction: 'zerg'
