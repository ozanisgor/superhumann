class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    # step 1: find champion
    @champion = Champion.find(params[:champion_id])
    # step 2 create booking instance
    @booking = Booking.new(booking_params)
    # step 3 associate the booking with the champion
    @booking.champion = @champion
    # step 4 associate the user with the booking
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
