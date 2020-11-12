print "Seeding..."

list01 = List.create(name: "Productivity List")
list02 = List.create(name: "Maybe List")

item01 = Item.create(list_id: list01.id, content: "Networking")
item02 = Item.create(list_id: list01.id, content: "Algorithms")
item03 = Item.create(list_id: list01.id, content: "Project")
item04 = Item.create(list_id: list01.id, content: "Learning")

item05 = Item.create(list_id: list02.id, content: "Chess Game")
item06 = Item.create(list_id: list02.id, content: "Japanese Lesson")

print "Done!"