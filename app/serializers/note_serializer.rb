class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :subtopic_id
end
