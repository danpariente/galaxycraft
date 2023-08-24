module API
  module V1
    class AccountsController < BaseController
      def create
        account = Account.new(account_params)

        if account.save
          render json: account, status: :created
        else
          render json: account.errors, status: :unprocessable_entity
        end
      end

      private

      def account_params
        params.require(:account).permit(:email, :password)
      end
    end
  end
end