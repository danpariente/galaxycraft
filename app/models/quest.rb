class Quest < ApplicationRecord
  has_rich_text :story
  has_rich_text :task

  belongs_to :journey

  has_one :assignment
end
