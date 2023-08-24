module API
  module V1
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
      params.require(:account).permit(:email, :password)
    end
  end
end