class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :product_picture
      t.boolean :in_cart

      t.timestamps
    end
  end
end
