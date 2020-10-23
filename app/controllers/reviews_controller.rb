class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to champion_path(@booking.champion)
    else
      render :new
    end
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
