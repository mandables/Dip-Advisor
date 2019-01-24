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


Divingsite.create(name: "Sipadan Island", country_id: 1, max_depth: 30, divesiteimage_file_name: "Sipadan Island.jpg")
Divingsite.create(name: "Lankayan Island", country_id: 1, max_depth: 22, divesiteimage_file_name: "Lankayan Island.jpg")
Divingsite.create(name: "Layang-Layang Island", country_id: 1, max_depth: 25, divesiteimage_file_name: "Layang-Layang Island.jpg")
Divingsite.create(name: "Sail Rock", country_id: 2, max_depth: 23, divesiteimage_file_name: "Sail Rock.jpg")
Divingsite.create(name: "Chumphon Pinnacle", country_id: 2, max_depth: 19, divesiteimage_file_name: "Chumphon Pinnacle.jpg")
Divingsite.create(name: "Komodo Island", country_id: 3, max_depth: 30, divesiteimage_file_name: "Komodo Island.jpg")
Divingsite.create(name: "Raja Ampat", country_id: 3, max_depth: 12, divesiteimage_file_name: "Raja Ampat.jpg")

Review.create(content: "SICK!", rating: 4, user_id: 1, divingsite_id: 1)
Review.create(content: "Nice", rating: 3, user_id: 1, divingsite_id: 2)
Review.create(content: "Cold!", rating: 2, user_id: 1, divingsite_id: 3)
Review.create(content: "Bad visibility!", rating: 1, user_id: 1, divingsite_id: 4)
Review.create(content: "Cold!", rating: 1, user_id: 2, divingsite_id: 5)
Review.create(content: "Strong currents!", rating: 1, user_id: 2, divingsite_id: 6)
Review.create(content: "Poor visibility", rating: 1, user_id: 2, divingsite_id: 7)
Review.create(content: "AMAZING!!", rating: 5, user_id: 2, divingsite_id: 1)

Upvote.create(user_id: 1 , review_id: 8)
Upvote.create(user_id: 1 , review_id: 7)
Upvote.create(user_id: 1 , review_id: 6)
Upvote.create(user_id: 1 , review_id: 5)
Upvote.create(user_id: 2 , review_id: 1)
Upvote.create(user_id: 2 , review_id: 2)
Upvote.create(user_id: 2 , review_id: 3)
