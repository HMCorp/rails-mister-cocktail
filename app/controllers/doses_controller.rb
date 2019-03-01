class DosesController < ApplicationController

  def new
    @dose = Dose.new
    # @ingredients = Ingredient.all  # pas nécessaire @dose "connaît" @ingredients
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(params_dose)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    if @dose.destroy
      redirect_to cocktails_path
    else
      render :edit
    end
  end

  def params_dose
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
