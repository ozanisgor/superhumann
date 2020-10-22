class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
    @champions = Champion.all
  end
end
