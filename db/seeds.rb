print "Seeding..."

user01 = User.create(username: "shu", password: "123")
user02 = User.create(username: "test", password: "124")

list01 = List.create(name: "Productivity List", user_id: user01.id)
list02 = List.create(name: "Maybe List", user_id: user01.id)

item01 = Item.create(list_id: list01.id, content: "Networking", complete: true)
item02 = Item.create(list_id: list01.id, content: "Algorithms", complete: false)
item03 = Item.create(list_id: list01.id, content: "Project", complete: false)
item04 = Item.create(list_id: list01.id, content: "Learning", complete: false)

item05 = Item.create(list_id: list02.id, content: "Chess Game", complete: false)
item06 = Item.create(list_id: list02.id, content: "Japanese Lesson", complete: false)

print "Done!"