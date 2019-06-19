class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user! # , only: %i[index]

  def index
  end

  def new
    @instrument = Instrument.new
  end
end
