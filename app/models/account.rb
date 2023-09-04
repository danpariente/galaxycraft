class Account < ApplicationRecord
  has_secure_password

  belongs_to :accountable, polymorphic: true

  validates :email, uniqueness: true, format: { with: /@/ }
  validates :password_digest, presence: true
end
