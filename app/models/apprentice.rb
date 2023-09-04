class Apprentice < ApplicationRecord
  has_many :paths
  has_many :journeys, through: :paths
  has_one :profile
  has_one :account, as: :accountable
end
