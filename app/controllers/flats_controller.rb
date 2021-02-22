class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @query = params[:query]
      # @flats = Flat.where("name LIKE ?", "%#{params[:query]}%")
      @flats = policy_scope(Flat).where("name LIKE ?", "%#{params[:query]}%").order(created_at: :desc)
    else
      # @flats = Flat.all
      @flats = policy_scope(Flat).order(created_at: :desc)
    end
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
    authorize @booking
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

  def edit; end

  def update
    @flat.update(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :url)
  end

  def set_flat
    @flat = Flat.find(params[:id])
    authorize @flat
  end
end
