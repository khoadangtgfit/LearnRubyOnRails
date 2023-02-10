# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create(:title=>"hello",
:description=>%{
    Ruby on Rails Tutorial book and screencast series 
    teach you how to develop and deploy real, 
    industrial-strength web applications with Ruby on Rails.

},
:image_url=>"cover-web.png",
:price=>29.99

)
Product.create(:title=>"djsidjs",
:description=>%{
    Ruby on Rails Tutorial book and screencast series 
    teach you how to develop and deploy real, 
    industrial-strength web applications with Ruby on Rails.

},
:image_url=>"cover-web.png",
:price=>29.99



)