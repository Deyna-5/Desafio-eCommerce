class Product < ApplicationRecord
       has_many :category_products
       has_many :categories, through: :category_products

       has_many :order_items
       has_many :orders, through: :order_items
end
