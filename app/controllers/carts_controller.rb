class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find_by(user_id: params[:id])
  end

end
