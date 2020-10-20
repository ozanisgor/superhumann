class SuperHeroesController < ApplicationController
 # before_action :set_superhero, only: [:show, :edi, :update, :destroy]
  def new
    @superhero = Super_hero.new
  end

  def create
    @superhero = Super_hero.new(super_hero_params)

    if @superhero.save
      redirect_to @super_hero, notice: 'Superhero was added successfully.'
    else
      render :new
    end
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_superhero
  #   @superhero = Super_hero.find(params[:id])
  # end
  def super_hero_params
    params.require(:super_hero).permit(:name, :description, :universe)
  end

end
