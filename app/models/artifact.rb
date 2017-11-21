class Artifact < ApplicationRecord
  belongs_to :subtopic
  has_many :comments
end
