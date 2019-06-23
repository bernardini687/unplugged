class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_instrument, only: %i[show edit update destroy]
  before_action :set_categories, only: %i[new edit]

  def index
    @instruments = Instrument.all
  end

  def show; end

  def new
    @instrument = Instrument.new
  end

  def edit; end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
      redirect_to root_url
    else
      render :new
    end
  end

  def update
    if @instrument.update_attributes(instrument_params)
      redirect_to @instrument
    else
      render :edit
    end
  end

  def destroy
    @instrument.destroy
    redirect_to root_url
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def set_categories
    @categories = Instrument.categories
  end

  def instrument_params
    params.require(:instrument).permit(:brand, :model, :category)
  end
end
