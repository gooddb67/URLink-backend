class Artifact < ApplicationRecord
  belongs_to :subtopic
  belongs_to :topic
  has_many :comments
end
