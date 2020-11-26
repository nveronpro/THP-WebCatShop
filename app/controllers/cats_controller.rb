class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end
  
  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.create(cats_params)

    if @cat.save
      redirect_to root_path, notice: "Nouvelle catégorie créée"
    else
      render :new
    end
  end

  def show
    @cat = find_cat
  end

  def edit
    @cat = find_cat
  end

  def update
    @cat = find_cat
    @cat.update(cats_params)
    redirect_to @cat
  end

  def destroy
    @cat = find_cat
    @cat.delete
    redirect_to '/', notice: "Catégorie supprimée"
  end

  private 

  def cats_params
    params.require(:cat).permit(:title)
  end

  def find_cat
    @cat = Cat.find(params[:id])
  end
end
