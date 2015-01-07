# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "go@further.always",password: "freedom123",role: 1,name: "Roman",shown_name: "Roman")
User.create!(email: "admin_go@further.always",password: "freedom123",role: 2,name: "Admin",shown_name: "Admin")