class Journey < ApplicationRecord
  has_one_attached :map

  has_many :quests
  has_many :paths
  has_many :apprentices, through: :paths

  validates :name, presence: true

  def to_s
    name
  end
end
