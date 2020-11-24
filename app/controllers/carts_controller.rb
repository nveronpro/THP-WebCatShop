class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user, only: [:show]

  def index
    @carts = Cart.all
  end

  def new
    @cart = Cart.new
  end

  def show
    @cart = Cart.find_by(user_id: params[:id])
  end

  def update
    @cart = Cart.find_by(user_id: current_user.id)
    

    #Ajouter le JS
  end

  def destroy
    @user = current_user
    @item = Item.find_by(id: params[:id])
    @cart = Cart.find_by(user_id: current_user.id)
    

    #Ajouter le JS
  end

end
