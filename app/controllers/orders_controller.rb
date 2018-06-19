class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    cart = Cart.find(params[:cart_id])
    @order = Order.new(@cart)
    debugger
    # Order.new(order_params)

    # debugger

    respond_to do |format|
      if @order.save
        debugger
        format.html { redirect_to @photos, notice: 'Order placed successfully.' }
        format.json { render :show, status: :created, location: @order }
      else
        debugger
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end 
  end

  private

  def order_params
    params.fetch(:cart, {})
  #   debugger
  #   params.require(:cart_id)        # permit.(:cart_id)
  end
end
