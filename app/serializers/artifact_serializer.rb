class ArtifactSerializer < ActiveModel::Serializer
  attributes :id, :media, :url, :subtopic_id, :caption

  has_many :comments
  belongs_to :subtopic
  belongs_to :topic

end
