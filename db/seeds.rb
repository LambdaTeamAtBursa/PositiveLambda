# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "go@further.always",password: "freedom123",reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1,role: nil,name: "Roman",shown_name: nil)
User.create!(email: "admin_go@further.always",password: "freedom123",reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1,role: nil,name: "Roman",shown_name: nil)