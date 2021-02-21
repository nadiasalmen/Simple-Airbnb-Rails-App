class BookingsController < ApplicationController
  before_action :set_flat, only: [:new, :create]

  # Embedded in flat show
  # def new
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new(booking_params)
    # @booking.start_date = params[:booking][:start_date]
    # @booking.end_date = params[:booking][:end_date]
    @booking.flat = @flat
    @booking.user = current_user
    @booking.status = 'New'
    if @booking.save
      redirect_to flats_path(@flat)
    else
      render 'flats/show', object: @flat
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :checkin, :checkout).merge(user_id: current_user.id)
  end
end
