class QuestsController < ApplicationController
  def show
    @quest = Quest.find(params[:id])
    @apprentice = Apprentice.find(params[:apprentice_id])
    @assignment = Assignment.where(quest: @quest, apprentice: @apprentice).first_or_initialize
  end

  def index
    @apprentice = Apprentice.find(params[:apprentice_id])
    @journey = @apprentice.journeys.first
    @quests = @journey&.quests
  end

  def new
    @quests = Quest.all
  end

  def create
    Quest.create!(params.require(:quest).permit!)

    redirect_back_or_to "/"
  end
end