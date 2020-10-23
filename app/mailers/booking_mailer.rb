class BookingMailer < ApplicationMailer
  def new_booking_email
    @booking = params[:booking]

    mail(to: "lewagonproject4@gmail.com", subject: "You got a new booking!")
  end

end
