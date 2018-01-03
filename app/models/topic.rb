class Topic < ApplicationRecord
  has_many :user_topics
  has_many :users, through: :user_topics
  has_many :subtopics, dependent: :destroy
  has_many :artifacts, through: :subtopics
end
