print "Seeding..."

list01 = List.create(name: "Shu's List")

item01 = Item.create(list_id: list01.id, content: "Networking")
item02 = Item.create(list_id: list01.id, content: "Algorithms")
item03 = Item.create(list_id: list01.id, content: "Project")
item04 = Item.create(list_id: list01.id, content: "Learning")

print "Done!"