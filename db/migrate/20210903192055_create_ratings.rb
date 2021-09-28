class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :comment
      t.integer :rating
      

      t.timestamps
    end
  end
end
