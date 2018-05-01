# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  [ "superman@email.com", "password" ],
  [ "harry@email.com", "password" ],
  [ "hermoine@email.com", "password" ],
  [ "busta@email.com", "password" ],
  [ "ghengis@email.com", "password" ],
  [ "serena@email.com", "password" ],
  [ "r2d2@email.com", "password" ],
  [ "barack@email.com", "password" ],
  [ "scooby@email.com", "password" ],
  [ "spock@email.com", "password" ]
]

user_list.each do |email, encrypted_password|
    User.create(email: email, password: encrypted_password)
end

center_list = [
  [ "Lookin4Work", "WestPhilly", "JobPlacement(jobs)", 1],
  [ "Greater Baptist", "WestPhilly", "Church(food, supplies)", 2],
  [ "Cradles to Crayons", "NorthPhilly", "Food Bank(food, supplies)", 3],
  [ "Little Wanderers", "NorthPhilly", "Shelter(shelter, food)", 4],
  [ "JobHelp", "SouthPhilly", "JobPlacement(jobs)", 5],
  [ "Soup Kitchen Cafe", "SouthPhilly", "Shelter(food, supplies)", 6],
  [ "Lombard Central Presbyterian", "WestPhilly", "Church(food, supplies)", 7],
  [ "Greater Philadelphia Coalition Against Hunger", "WestPhilly", "Food Bank(food, shelter, supplies)", 8],
]

center_list.each do |name, location, description, user|
    Center.create( name: name, location: location, description: description, user: user)
end

post_list = [
  [ "Soup lunch", "Come get some hearty chicken or vegatable soup", 3, "Meals"],
  [ "Clothing drive", "Many warm jackets and clean socks available", 2, "Supplies"],
  [ "Shelter open", "About 10 beds are opened up this coming weekend", 4, "Shelter"],
  [ "Mover needed", "persons needed to make furniture deliveries", 5, "Work"],
  [ "Sales associate", "person needed who can be enthusiatic with our sales", 1, "Work"],
  [ "Warm place to stay for the night", "Our place has 15 beds available", 6, "Shelter"],
  [ "Spaghetti dinner", "Pasta dinner is being served next week", 7, "Meals"],
  [ "Toothbrushes and toiletries", "Come get toothbrushed and other supplies for your hygeine needs", 8, "Supplies"],
]

post_list.each do |title, content, center_id, category|
    Post.create( title: title, content: content, center_id: center_id, category_id: category_id)
end

category_list =  "Food", "Supplies", "Shelter", "Jobs"
