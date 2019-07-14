class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :model
      t.string :brand
      t.date :year
      t.string :ram
      t.string :external_storage
      t.integer :product_type_id

      t.timestamps
    end
    add_index :products, :brand 
    add_index :products, :model 
    add_index :products, :ram 
    add_index :products, :external_storage
  end
end
