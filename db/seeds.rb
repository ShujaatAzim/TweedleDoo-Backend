print "Seeding..."

list01 = List.create(name: "Productivity List")
list02 = List.create(name: "Maybe List")

item01 = Item.create(list_id: list01.id, content: "Networking", complete: true)
item02 = Item.create(list_id: list01.id, content: "Algorithms", complete: false)
item03 = Item.create(list_id: list01.id, content: "Project", complete: false)
item04 = Item.create(list_id: list01.id, content: "Learning", complete: false)

item05 = Item.create(list_id: list02.id, content: "Chess Game", complete: false)
item06 = Item.create(list_id: list02.id, content: "Japanese Lesson", complete: false)

print "Done!"