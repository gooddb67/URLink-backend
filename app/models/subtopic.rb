class Subtopic < ApplicationRecord
  belongs_to :topic
  has_many :artifacts
  has_many :notes
end
