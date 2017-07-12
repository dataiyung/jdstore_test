class CartsController < ApplicationController

def checkout
 @order =Order.new
end

def clean
  current_cart.clean!
  flash[:warning] = "已清空購物車"
  redirect_to carts_path
 end
end
