class QuestSerializer
  include JSONAPI::Serializer

  has_many :assignments

  attributes :name, :story_text, :task, :last_assignment
end