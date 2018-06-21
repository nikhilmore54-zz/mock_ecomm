class OrdersController < ApplicationController
<<<<<<< HEAD
<<<<<<< 18eb6709bc357627d869519a8734859a6daa20e0
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
=======
=======
>>>>>>> master
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
<<<<<<< HEAD
end
>>>>>>> Add order page
=======
end
>>>>>>> master
