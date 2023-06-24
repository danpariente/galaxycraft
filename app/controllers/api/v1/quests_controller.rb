module API
  module V1
    class QuestsController < BaseController
      def index
        journey = Journey.find(params[:journey_id])

        render json: journey.quests
      end
    end
  end
end