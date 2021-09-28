class AddOrderIdToCart < ActiveRecord::Migration[6.1]
  def change
    add_column "carts", "order_id", :integer
  end
end
