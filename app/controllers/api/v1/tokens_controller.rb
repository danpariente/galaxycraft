module API
  module V1
    class TokensController < BaseController
      def create
        account = Account.find_by_email(account_params[:email])
        if account&.authenticate(account_params[:password])
          render json: {
            token: JsonWebToken.encode(account_id: account.id),
            email: account.email
          }
        else
          head :unauthorized
        end
      end

      private

      def account_params
        params.require(:token).permit(:email, :password)
      end
    end
  end
end