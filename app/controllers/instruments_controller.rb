class InstrumentsController < ApplicationController
  skip_before_action :authenticate_member!, only: %i[index show]
  before_action :set_instrument, only: %i[show edit update destroy]

  def index
    if params[:query].blank?
      @instruments = Instrument.all
    else
      @instruments = Instrument.where('category LIKE ?', "%#{params[:query]}%")
      # @categories = Instrument.all.map { |i| i.category.capitalize }
    end
  end

  def show; end

  def new
    @member = current_member
    @instrument = Instrument.new
    authorize @instrument

    @categories = ['Keyboard', 'Guitar', 'Bass', 'Wind instrument', 'Brass instrument', 'Bowed instrument']
    @attributes = ['awesome', 'graceful', 'epic', 'good enough']
    @prices = (5..100).step(5).to_a
  end

  def edit; end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.member = current_member

    if @instrument.save
      redirect_to @instrument
    else
      render 'new'
    end
  end

  def update
    if @instrument.update(instrument_params)
      redirect_to @instrument
    else
      render 'edit'
    end
  end

  def destroy
    @instrument.destroy
  end

  def pundit_user
    current_member
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:category, :address, :description, :photo, :price)
  end
end
