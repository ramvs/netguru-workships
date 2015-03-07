# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  [ "Carolyn"   , "Hartline"   , "carolyn@gmail.com"  ,"password1234","password1234",true],
  [ "Svend"     , "Crandall"   , "svend@gmail.com"    ,"password1234","password1234",false],
  [ "Fitzgerald", "Pelcyger"   , "fitzgeraldgmail.com","password1234","password1234",false],
  [ "Burnard"   , "Stolzenberg", "burnard@gmail.com"  ,"password1234","password1234",false],
  [ "Marlane"   , "D'ovidio"   , "marlane@gmail.com"  ,"password1234","password1234",false],
  [ "Gonzales"  , "Pesce"      , "gonzales@gmail.com" ,"password1234","password1234",false],
]


product_list = [
  ["Opel Corsa"   , "German car"  , 10000 ,"03-03-2015", 1, 1],
  ["Toyota Yaris" , "Japan car"   , 20000 ,"02-03-2015", 1, 1],
  ["Peugeot 206"  , "French car"  , 25000 ,"01-03-2015", 1, 2],
  ["Kia Ceed"     , "Korean car"  , 30000 ,"22-02-2015", 1, 3],

  ["Cookbook","A book with recipes", 10000 ,"03-03-2015", 2, 3],
  ["Agile with Rails 4" , "Book to learn Ruby on Rails", 20000 ,"02-03-2015", 2, 2],
  ["LOTR Two Towers"    , "The second part of Tolkien's trilogy", 25000 ,"01-03-2015", 2, 2],
  ["Cyberiada"         , "Science fiction book", 30000 ,"22-02-2015", 2, 1],
]

review_list = [
  ["Very good car!", 5,"04-03-2015",1,1],
  ["Awful car"    , 2,"05-03-2015",2,2],
  ["Nice car"     , 4,"05-03-2015",4,4],
  ["Definitely worth the money!", 5,"01-03-2015",1,3],

  ["Very good book!", 5,"04-03-2015",5,1],
  ["Nice book!"     , 3,"05-03-2015",6,2],
  ["Very good book", 5,"04-03-2015",7,3],
]

user_list.each do |firstname, lastname, email, password, password_confirmation, admin|
  User.create( firstname: firstname, lastname: lastname, email: email,
               password: password, password_confirmation: password_confirmation, admin: admin )
end


Category.create( name: 'Cars')
Category.create( name: 'Books')


product_list.each do |title, description, price, created_at, category_id, user_id|
  Product.create( title: title, description: description, price: price, created_at: created_at,
                   category_id: category_id, user_id: user_id)
end

review_list.each do |content, rating, created_at, product_id, user_id|
  Review.create( content: content, rating: rating, created_at: created_at, product_id: product_id, user_id: user_id)
end