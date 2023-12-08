class ReviewsController < ApplicationController


  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.save
    flash.notice = "Avis ajouté !"
    redirect_to user_bookings_path(current_user)
  end

  private

  def params
    params.require(:review).permit(:content, :rating, :booking_id)
  end

end
