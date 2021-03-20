class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :category_products
end
