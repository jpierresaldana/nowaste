class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
    # raise
  end

  def show
    @order = Order.find_by(user_id: current_user.id)
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(user_id: current_user.id)
    @current_cart.line_items.each do |item|
      @order.line_items << item
      item.cart_id = nil
    end
    @order.total = @current_cart.sub_total + 10
    # @order.user_id = current_user.id
    @order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
    redirect_to order_path(current_user)
  end

  # private

  # def order_params
  #   params.require(:order).permit(:first_name, :email, :address)
  # end
end
