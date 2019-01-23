# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Tim", password_digest: "password")
User.create(username: "Mani", password_digest: "passport")


Country.create(name: "Indonesia")
Country.create(name: "Thailand")
Country.create(name: "Malaysia")


Divingsite.create(name: "Sipadan Island", country_id: 1, max_depth: 30)
Divingsite.create(name: "Lankayan Island", country_id: 1, max_depth: 22)
Divingsite.create(name: "Layang-Layang Island", country_id: 1, max_depth: 25)
Divingsite.create(name: "Sail Rock", country_id: 2, max_depth: 23)
Divingsite.create(name: "Chumphon Pinnacle", country_id: 2, max_depth: 19)
Divingsite.create(name: "Komodo Island", country_id: 3, max_depth: 30)
Divingsite.create(name: "Raja Ampat", country_id: 3, max_depth: 12)
