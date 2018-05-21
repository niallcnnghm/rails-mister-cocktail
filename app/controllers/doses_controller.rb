class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:id])
    @dose.save
  end

 private

  def dose_params
    params.require(:cocktail).permit(:ingredient)
  end

end
