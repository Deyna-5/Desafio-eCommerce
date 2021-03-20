class Product < ApplicationRecord
       has_many :category_products
       has_many :category, through: :category_products

       has_many :order_items
       has_many :orders, through: :order_items
end
