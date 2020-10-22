class ChampionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
   def index
    if params[:query].present?
      sql_query = " \
        champions.name @@ :query \
        OR champions.description @@ :query \
        OR champions.universe @@ :query \
      "
      @champions = Champion.where(sql_query, query: "%#{params[:query]}%")
    else
      @champions = Champion.all
    end
     @markers = @champions.geocoded.map do |champion|
      {
        lat: champion.latitude,
        lng: champion.longitude
      }
    end
  end

  def show
    @champion = Champion.find(params[:id])
    @markers = [ {
      lat: @champion.latitude,
      lng: @champion.longitude
    }]
         
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
    params.require(:champion).permit(:name, :description, :universe, :rate, :photo, :address)
  end
end
