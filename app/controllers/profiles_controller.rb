class ProfilesController < ApplicationController
  def show
    @apprentice = Apprentice.find(params[:apprentice_id])

    render locals: { profile: @apprentice.profile }
  end

  def new
    @apprentice = Apprentice.find(params[:apprentice_id])
  end

  def create
    apprentice = Apprentice.find(params[:apprentice_id])

    Profile.create!(params.require(:profile).permit!)

    redirect_to apprentice_profile_path(apprentice)
  end
end