class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
    @champions = Champion.all
    @search = params["search"]
    if @search.present?
      @universe = @search["universe"]
      @champions = Champion.where(universe: @universe)
    end
  end
end
