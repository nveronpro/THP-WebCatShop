class CarditemsController < ApplicationController
    def new
        @carditem = Carditem.new
    end
      
    def create
      @carditem = Carditem.new(item: find_item, cart: current_user.cart)
        if @carditem.save
          flash[:success] = "Produit ajouté au panier"
          redirect_to '/'
        else
          render :new
        end
    end

    def destroy
        @carditem = find_carditem.sample
        @carditem.delete
        redirect_to cart_path(current_user)
    end

    private 
    
    def find_item
        @item = Item.find(params[:id])
    end

    def find_carditem
        Carditem.all.each do |cart|
            @carditem = cart if (cart.id == current_user.cart && cart.item == find_item)
        end
    end
    
end
