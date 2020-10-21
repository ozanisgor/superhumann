class DashboardsController < ApplicationController
  def show
    @bookings = Booking.where(user: current_user)
    @champions = Champion.where(user: current_user)
  end
end
