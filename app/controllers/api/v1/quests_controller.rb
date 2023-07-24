module API
  module V1
    class QuestsController < BaseController
      def index
        journey = Journey.last

        render json: journey.quests
      end

      def show
        journey = Journey.last

        render json: QuestSerializer.new(journey.quests.find_by(id: params[:id]))
      end
    end
  end
end