class ReviewsController < ApplicationController


  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(params)
    @review.booking = @booking
    @review.save
    flash.notice = "Avis ajouté !"
    redirect_to flats_path # rediriger à l'index des bookings du user
  end

  private

  def params
    params.require(:review).permit(:content, :rating)
  end

end
