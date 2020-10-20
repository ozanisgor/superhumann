class ChampionsController < ApplicationController

  def index
    @champions = Champion.all
  end

  private

  def champion_params
    params.require(:champion).permit(:name, :description, :universe, :rate)
  end
end
