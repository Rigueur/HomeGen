class BookingsController < ApplicationController
  before_action :set_flat, only: [:new, :create]

  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `flat_id` to associate booking with corresponding flat
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
      redirect_to @flat
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = current_user.bookings.find(params[:id])
  end

  def update
    @booking = current_user.bookings.find(params[:id])
    @booking.update(booking_params)
    redirect_to @booking
  end

  def cancel
    @booking = current_user.bookings.find(params[:id])
    @booking.cancelled = true
    @booking.save
    redirect_to @booking
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
