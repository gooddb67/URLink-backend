class ArtifactSerializer < ActiveModel::Serializer
  attributes :id, :media, :url, :subtopic_id

  has_many :comments

end
