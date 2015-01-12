require 'faker'
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "go@further.always", password: "freedom123", role: 1, name: "Roman", shown_name: "Roman")
User.create!(email: "admin_go@further.always", password: "freedom123", role: 2, name: "Admin", shown_name: "Admin")

CyteCategory.create!(name: "Category1")
100.times do |n|
  CyteCategory.create!(name: "Category#{n}", parent_category_id:CyteCategory.take.id)
end

10.times do |n|
  Tag.create!(:name => Faker::Lorem.word)
end

cytes = %Q[Если на вопрос никто не знает ответа, то пора читать описание.
Хотите меньше работать наймите хорошего программиста.
В каждом системном администраторе есть что-то от Бога.
Программист не есть профессия, это - диагноз.
Кто способен на маленькие пакости, тот способен на большие подвиги.
Почему нет доплат за знание алгоритмических языков?
Не все программисты одинаково гениальны.
Кто как программирует, тот так и ест.
Админ спит - трафик идет...
Кому и командная строка - дружественный интерфейс.]
cytes.split("\n").each{ |cyte| Cyte.create(text: cyte, creator_id: 1) }
