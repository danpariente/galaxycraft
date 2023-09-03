class ApprenticesController < ApplicationController
  def show
    @journey = Journey.find(params[:journey_id])
    @apprentice = Apprentice.find(params[:id])
  end
end