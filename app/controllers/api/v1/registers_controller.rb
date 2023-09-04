module API
  module V1
    class RegistersController < BaseController
      def create
        apprentice = Apprentice.new(register_params.slice(:first_name, :last_name))
        account = Account.new(register_params.slice(:email, :password))
        account.accountable = apprentice

        if account.save
          render json: apprentice, status: :created
        else
          render json: account.errors, status: :unprocessable_entity
        end
      end

      private

      def register_params
        params.require(:register).permit(:first_name, :last_name, :email, :password)
      end
    end
  end
end