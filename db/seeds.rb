# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

categories = ["Clothes", "Shoes", "Smartphones"]

categories.each do |category|
       Category.create(name: category)
end

Product.destroy_all

Category.all.each do |category|
       4.times do |i|
              product_attributes ={
                     name: "Producto # #{i}",
                     price: rand(1..100),
                     description: "Descripcion # #{i}"
              }
              Product.create(product_attributes).categories << category
       end
end