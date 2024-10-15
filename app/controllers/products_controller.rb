class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(10).padding(3)
  end

  def show
    @product = Product.find(params[:id])
    @stocks = @product.stocks.includes(:store)
  end
end
