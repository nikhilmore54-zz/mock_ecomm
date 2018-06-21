class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @order = Order.all
  end

  def new
  end

  def create
    cart = Cart.find(params["cart_id"])
    @order = Order.new({cart: cart, user: current_user})
    if @order.save
      flash[:success] = 'Order added!'
      cart.set_status
      session[:cart_id] = nil
      redirect_to photos_path

      # Code to change status of cart


    else
      render 'new'
    end
  end

  # private

  # def order_params
  #   params.require(:order).permit(:cart)
  # end
end