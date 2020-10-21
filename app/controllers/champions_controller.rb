class ChampionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]
  
  def index
    @champions = Champion.all
  end

  def show
    @champion = Champion.find(params[:id])
    # @review = Review.new
  end

# test comment
  def create

    @champion = Champion.new(champion_params)
    @champion.user = current_user
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
