# adding cookies in rails that youre browsing
module CurrentCart

    private

    def set_cart
        @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        @carts = Cart.create
        session[:cart_id] = @cart_id
    end
end