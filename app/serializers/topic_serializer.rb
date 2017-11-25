class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :subtopics
  has_many :artifacts
  has_many :users
end
