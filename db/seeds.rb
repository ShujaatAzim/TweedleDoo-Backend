print "Seeding..."

user01 = User.create(username: "shu", password: "123")
user02 = User.create(username: "test", password: "124")

list01 = List.create(name: "Shu's List 1", user_id: user01.id)
list02 = List.create(name: "Shu's List 2", user_id: user01.id)
list03 = List.create(name: "Test's List 1", user_id: user02.id)
list04 = List.create(name: "Test's List 2", user_id: user02.id)

item01 = Item.create(list_id: list01.id, content: "Networking", complete: true)
item02 = Item.create(list_id: list01.id, content: "Algorithms", complete: false)

item03 = Item.create(list_id: list02.id, content: "Project", complete: false)
item04 = Item.create(list_id: list02.id, content: "Learning", complete: false)

item05 = Item.create(list_id: list03.id, content: "Chess Game", complete: false)
item06 = Item.create(list_id: list03.id, content: "Japanese Lesson", complete: true)

item07 = Item.create(list_id: list04.id, content: "Test item 1", complete: true)
item08 = Item.create(list_id: list04.id, content: "Test item 2", complete: false)

print "Done!"