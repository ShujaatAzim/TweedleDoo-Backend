print "Seeding..."

user01 = User.create(username: "Shu", password: "123")
user02 = User.create(username: "Test", password: "124")

list01 = List.create(name: "Shu's Productivity List", user_id: user01.id)
list02 = List.create(name: "Shu's Fun List", user_id: user01.id)
list03 = List.create(name: "Test's Tasks", user_id: user02.id)
list04 = List.create(name: "Test's Call List", user_id: user02.id)

item01 = Item.create(list_id: list01.id, content: "Networking", complete: false)
item02 = Item.create(list_id: list01.id, content: "Algorithms", complete: false)
item03 = Item.create(list_id: list01.id, content: "Project", complete: false)
item04 = Item.create(list_id: list01.id, content: "Learning", complete: false)

item05 = Item.create(list_id: list02.id, content: "Chess Game", complete: false)
item06 = Item.create(list_id: list02.id, content: "Japanese Lesson", complete: false)
item07 = Item.create(list_id: list02.id, content: "Travel Planning", complete: false)
item08 = Item.create(list_id: list02.id, content: "Japanese Lesson", complete: false)

item09 = Item.create(list_id: list03.id, content: "Passport Renewal", complete: false)
item10 = Item.create(list_id: list03.id, content: "Grocery Shopping", complete: false)
item11 = Item.create(list_id: list03.id, content: "Get Car Serviced", complete: false)

item12 = Item.create(list_id: list04.id, content: "Call Work", complete: false)
item13 = Item.create(list_id: list04.id, content: "Call Friends", complete: false)
item14 = Item.create(list_id: list04.id, content: "Call Agent", complete: false)
item15 = Item.create(list_id: list04.id, content: "Call Customer Service", complete: false)


print "Done!"