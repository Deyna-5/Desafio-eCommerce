class CreateUserCupons < ActiveRecord::Migration[5.2]
  def change
    create_table :user_cupons do |t|
      t.references :user, foreign_key: true
      t.references :cupon, foreign_key: true
      t.references :order, foreign_key: true
      t.boolean :charged

      t.timestamps
    end
  end
end
