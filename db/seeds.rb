# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
role = Role.create([{name: 'admin'}, {name: 'registered'}, {name:'fraggler'}])
users = User.create([{email: 'super@test.com', username: 'admin', password: 'admin123', password_confirmation: 'admin123'}])