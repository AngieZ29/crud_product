class ProductsController < ApplicationController
  before_action :get_product, only: [:show, :edit, :update, :delete]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(val_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(val_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  private

  def get_product
    @product = Product.find(params[:id])
  end

  def val_params
    params.require(:product).permit(:name, :description, :price)
  end
end
