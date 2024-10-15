class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])
    @stocks = @store.stocks.includes(:product).page(params[:page]).per(10)
  end
end
