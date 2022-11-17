class LineItemsController < ApplicationController
  skip_before_action :authenticate_user!
  def create
    product = Product.find(params[:product_id])
    @line_item = @current_cart.add_product(product)
    if @line_item.save
      redirect_to request.referrer, notice: "Producto Agregado al Carrito"
    else
      render "product/show"
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cart_path(@current_cart)
  end

  def add_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    product = Product.find(params[:id])
    puts "---------------------------------------------"
    puts product
    product.stock -= 1
    product.save
    redirect_to cart_path(@line_item.cart_id)
  end

  def reduce_quantity
    @line_item = LineItem.find(params[:id])
    if @line_item.quantity > 1
      @line_item.quantity -= 1
    else
      flash[:notice] = "No puedes reducir más la cantidad"
    end
    @line_item.save
    redirect_to cart_path(@line_item.cart_id)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:quantity,:product_id, :cart_id)
  end
end
