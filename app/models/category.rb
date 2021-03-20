class Category < ApplicationRecord
       has_many :sub_categories

       has_many :category_products
       has_many :products, through: :category_products
end
