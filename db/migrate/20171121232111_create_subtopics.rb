class CreateSubtopics < ActiveRecord::Migration[5.1]
  def change
    create_table :subtopics do |t|
      t.string :name
      t.integer :topicId

      t.timestamps
    end
  end
end
