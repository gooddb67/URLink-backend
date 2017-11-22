class SubtopicSerializer < ActiveModel::Serializer
  attributes :id, :topic_id, :name

  belongs_to :topic
  has_many :notes
  has_many :artifacts
end
