class PagesController < ApplicationController
  def home
    @champions = Champion.all
    @search = params["search"]
    if @search.present?
      @universe = @search["universe"]
      @champions = Champion.where(universe: @universe)
    end
  end
end
