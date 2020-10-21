class ChampionsController < ApplicationController

  def index
    @champions = Champion.all
  end

  def create
    @champion = Champion.new(champion_params)

    if @champion.save
      redirect_to @champion, notice: 'Champion was successfully created.'
    else
      render :new
    end
  end

  
  def new
    @champion = Champion.new
  end
  

  private

  def champion_params
    params.require(:champion).permit(:name, :description, :universe, :rate)
  end
end