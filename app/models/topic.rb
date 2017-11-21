class Topic < ApplicationRecord
  has_many :users, through: :user_topics
  has_many :subtopics
end
