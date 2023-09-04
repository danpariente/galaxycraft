module API
  module V1
    class AssignmentsController < BaseController
      def show
        assignment = Assignment.find_by(apprentice_id: params[:apprentice_id], quest_id: params[:quest_id])

        render json: assignment
      end

      def create
        quest = Quest.find(params[:quest_id])
        assignment = quest.assignments.build(assignment_params)
        assignment.apprentice_id = params[:apprentice_id]

        if assignment.save
          render json: assignment, status: :created
        else
          render json: { errors: assignment.errors }, status: :unprocessable_entity
        end
      end

      private

      def assignment_params
        params.require(:assignment).permit(:submission)
      end
    end
  end
end