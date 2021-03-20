class CategoryProduct < ApplicationRecord
  belongs_to :category
  belongs_to :subcategory
  belongs_to :product
end
