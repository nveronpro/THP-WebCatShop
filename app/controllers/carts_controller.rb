class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def new
    @cart = Cart.new
  end

  def show
    @cart = Cart.find_by(user_id: params[:id])
  end

end
