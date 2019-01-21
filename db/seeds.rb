# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Tim", password_digest: "password")
User.create(username: "Mani", password_digest: "passport")

Country.create(name: "Peru")

Divingsite.create(name: "Plunge City", country_id: 1, depth: 100, city: "Lima")

Review.create(content: "It was awesome", user_id: 1, divingsite_id: 1)

Upvote.create(user_id: 1, review_id: 1)
Upvote.create(user_id: 2, review_id: 1)
