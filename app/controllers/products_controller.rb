class ProductsController < ApplicationController
  before_action :set_products, only: %w[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      if @products = Product.search_products(params[:query])
        @products = Product.search_products(params[:query])
      else
        @products = Product.all
      end
      # elsif params[:query].empty?
      # redirect_to root_path
      # flash[:notice] = "no se encontro datos"
    elsif params[:category_id].present?
      @products = Product.where(category_id: params[:category_id])
    else
      @products = Product.all
    end
  end

  def show
  end

  def new
    if current_user.ruc.nil?
      redirect_to edit_user_registration_path(current_user.id)
      flash[:notice] = "Debe tener 'RUC' en los datos para vender"
    else
      @product = Product.new
    end
  end

  def create
    @product = Product.new(products_params)
    @product.user_id = current_user.id
    @product.expiration_date = "" if @product.category != 2 && @product.category != 4
    if @product.save
      redirect_to product_path(@product)
      flash[:notice] = "Producto creada con éxito"
    else
      render :new, status: :unprocessable_entity
      flash[:notice] = "ERROR - Revise los datos a registrar para crear el Producto"
    end
  end

  def edit
    if current_user.ruc.empty?
      redirect_to edit_user_registration_path(current_user.id)
      flash[:notice] = "Debe vendedor para esa acción"
    else
      @category = Category.new
      @product = Product.find(params[:id])
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.update!(products_params)
    redirect_to product_path(@product)
    flash[:notice] = "Producto actualizado con éxito"
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.line_items.any?
      redirect_to product_path(@product)
      flash[:notice] = "Eliminar primero del carrito "
    else
      @product.destroy
      redirect_to products_path, status: :see_other
      flash[:notice] = "Producto eliminado con éxito"
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def set_products
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(
      :name, :original_price, :discount, :stock, :expiration_date, :description,
      :category_id, :user_id, photos: []
    )
  end
end
