module API
  module V1
    class AssignmentsController < BaseController
      def show
        assignment = Assignment.find_by(apprentice_id: params[:apprentice_id], quest_id: params[:quest_id])

        render json: assignment
      end
    end
  end
end