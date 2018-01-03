class Subtopic < ApplicationRecord
  belongs_to :topic
  has_many :artifacts, dependent: :destroy
  has_many :notes
end
