module Authenticable
  def current_account
    return @current_account if @current_account

    header = request.headers["Authorization"]
    return nil if header.nil?

    decoded = JsonWebToken.decode(header)

    @current_account = Account.find(decoded[:account_id]) rescue ActiveRecord::RecordNotFound
  end
end