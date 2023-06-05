class AssignmentsController < ApplicationController
  def create
    Assignment.create!(params.require(:assignment).permit!)

    redirect_back_or_to "/"
  end
end