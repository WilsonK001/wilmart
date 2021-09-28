class Cart < ApplicationRecord

    has_many :line_items, dependent: :destroy

    def add_product(product)
        current_item = line_items.find_by(product_id: product.id)
        if current_item
            current_item.increment(:quantity)
        else
            current_item = line_items.build(product_id: product.id)
        end
        current_item
    end
    #taking anything we add to the cart and the total price based on that
    def total_price
        line_items.to_a.sum {|item| item.total_price}
    end
    belongs_to :order, optional: true


end
