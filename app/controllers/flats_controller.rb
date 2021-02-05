class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path
      # redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :addres, :description, :price_per_night, :number_of_guests)
  end
end
