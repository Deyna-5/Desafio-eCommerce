class CreateAddCategoryToCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :add_category_to_categories do |t|
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
