class Student < ApplicationRecord
  has_many :paths
  has_many :journeys, through: :paths
end
