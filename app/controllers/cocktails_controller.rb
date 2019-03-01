class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # doublon : @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def params_cocktail
    params.require(:cocktail).permit(:name)
  end

end
