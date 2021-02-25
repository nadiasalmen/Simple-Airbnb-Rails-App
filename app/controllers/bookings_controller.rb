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
    authorize @booking
    @booking.save
    # if @booking.save
    #   redirect_to flat_path(@flat), notice: 'Booking created successfully!'
    #   # Same:
    #   # redirect_to @flat
    # else
    #   render 'flats/show', object: @flat, alert: 'Couldn´t create booking!'
    # end
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :checkin, :checkout).merge(user_id: current_user.id)
  end
end
