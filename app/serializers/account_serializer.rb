class AccountSerializer
  include JSONAPI::Serializer

  attributes :first_name, :last_name, :email, :accountable_id
end
