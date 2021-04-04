#CREANDO CATEGORIAS
Category.destroy_all
categories = ["T-shirt", "Shoes", "Pants"]
categories.each do |category|
       Category.create(name: category)
end

#CREANDO PRODUCTOS
Product.destroy_all
Category.all.each do |category|
       5.times do |i|
              product_attributes ={
                     name: "Producto # #{i}",
                     description: "Descripcion # #{i}",
                     price: rand(1..100),
                     stock: rand(100...5000),
                     sku: "AKJBND5"
              }
              Product.create(product_attributes).categories << category
       end
end

#CREANDO METODO DE PAGO
PaymentMethod.destroy_all
PaymentMethod.create(name: "Paypal Express Checkout", code: "PEC")

#CREANDO ADMIN
Admin.destroy_all
Admin.create(
       email: "email_admin@gmail.com"
)

#CREANDO COLORES
Color.destroy_all
10.times do
       Color.create(
              name: Faker::Color.color_name,
              code: Faker::Color.hex_color
       )
end

#CREANDO TALLAS
Size.destroy_all
tallas = ["XS", "S", "M", "XL", "L", "LL"]
tallas.each do |talla|
       Size.create(name: talla)
end