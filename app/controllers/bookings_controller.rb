class BookingsController < ApplicationController
 
  def new
    @champion = Champion.find(params[:champion_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
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
    @booking.total_price = (@booking.end_time - @booking.start_time).to_i * @champion.rate
    if @booking.save
      redirect_to booking_path(@booking)
      BookingMailer.with(booking: @booking).new_booking_email.deliver_later
    else
      render 'new'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to dashboard_path, notice: 'Offer was successfully updated.'
    else
      redirect_to dashboard_path, notice: 'Offer was not updated.'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status)
  end
end
