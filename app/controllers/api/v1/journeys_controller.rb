module API
  module V1
    class JourneysController < BaseController
      def index
        journeys = Journey.all

        render json: journeys
      end

      def show
        journey = Journey.find(params[:id])

        render json: journey
      end
    end
  end
end