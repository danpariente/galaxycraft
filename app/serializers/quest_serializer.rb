class QuestSerializer
  include JSONAPI::Serializer

  attributes :name, :story_text, :task, :last_assignment
end