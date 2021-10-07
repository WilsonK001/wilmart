class Product < ApplicationRecord
    # before_destroy :not_referenced_by_any_line_item
    belongs_to :user, optional: true 
    has_many :line_items
    has_one_attached :image
    has_many :ratings

    def price_to_show 
        "%.2f" % price
    end
end
