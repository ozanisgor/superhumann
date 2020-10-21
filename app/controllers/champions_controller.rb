class ChampionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  
  def index
    # if params[:search].present?
    #   # filter based on params
    #   @champions = Champion.where(universe: params[:search][:universe])
    # else
    #   @champions = Champion.all
    # end
    @champions = params[:search].present? ? Champion.where(universe: params[:search][:universe]) : Champion.all
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
    params.require(:champion).permit(:name, :description, :universe, :rate, :photo)
  end
end
