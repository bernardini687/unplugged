class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index new create]
  # before_action :set_instrument, only: %i[show edit update destroy]

  def index
    @instruments = Instrument.all
  end

  def new
    @instrument = Instrument.new
    @categories = Instrument.categories
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = User.new(email: 'miao@miao.com', password: '123456', password_confirmation: '123456')
    if @instrument.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:brand, :model, :category)
  end
end
