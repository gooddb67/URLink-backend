class CreateUserTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :user_topics do |t|
      t.integer :userId
      t.integer :topicId

      t.timestamps
    end
  end
end
