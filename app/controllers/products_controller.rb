class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
  end

  private
  def product_params
    params.require(:product).permit!
  end
end
