class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart 

  #taking a price that we declared, convereted to in int multiplying by the quantity that is set on the store
  def total_price
    product.price.to_i * quantity.to_i
    end
end

