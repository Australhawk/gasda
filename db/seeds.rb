# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

games = Game.create([{ name: 'Dota 2'},{ name: 'League of Legends'},{ name: 'Starcraft 2'}])
Server.create([{name: 'Latin America North', tag: 'LAN', game_id: 2},
	{name: 'Latin America South', tag: 'LAS', game_id: 2}]
	)
Role.create([{name: 'Chieftain', description: 'The Big Boss'},
	{name: 'Shaman', description: '2nd at Charge'},
	{name: 'Grunt', description: 'A worthy member'},
	{name: 'Pawn', description: 'A simple pawn'}])
Ttype.create([{name: 'Single Elimination'},{name: 'Double Elimination'},{name: 'Swiss'},{name: 'Round Robin'}])
