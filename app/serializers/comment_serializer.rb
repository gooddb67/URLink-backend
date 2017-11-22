class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :artifact_id

  belongs_to :artifact
end
