class Account < ApplicationRecord
  has_secure_password

  belongs_to :accountable, polymorphic: true

  validates :email, uniqueness: true, format: { with: /@/ }
  validates :password_digest, presence: true

  delegate :first_name, :last_name, to: :accountable, allow_nil: true
  delegate :id, to: :accountable, prefix: true, allow_nil: true
end
