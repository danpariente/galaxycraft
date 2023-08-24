class Account < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, format: { with: /@/ }
  validates :password_digest, presence: true
end
