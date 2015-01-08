# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "go@further.always",password: "freedom123",role: 1,name: "Roman",shown_name: "Roman")
User.create!(email: "admin_go@further.always",password: "freedom123",role: 2,name: "Admin",shown_name: "Admin")

%Q[Если на вопрос никто не знает ответа, то пора читать описание.
Хотите меньше работать наймите хорошего программиста.
В каждом системном администраторе есть что-то от Бога.
Программист не есть профессия, это - диагноз.
Кто способен на маленькие пакости, тот способен на большие подвиги.
Почему нет доплат за знание алгоритмических языков?
Не все программисты одинаково гениальны.
Кто как программирует, тот так и ест.
Админ спит - трафик идет...
Кому и командная строка - дружественный интерфейс.].split("\n").each{ |cyte| Cyte.create(text: cyte, creator_id: 1) }
