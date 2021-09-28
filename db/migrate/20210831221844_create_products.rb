class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :category
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
