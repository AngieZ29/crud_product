class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    get_product
  end

  def edit
    get_product
  end

  private

  def get_product
    @product = Product.find(params[:id])
  end
end
