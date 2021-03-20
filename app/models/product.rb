class Product < ApplicationRecord
       has_many :category_products
       has_many :category, through: :category_products
end
