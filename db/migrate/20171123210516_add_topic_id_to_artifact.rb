class AddTopicIdToArtifact < ActiveRecord::Migration[5.1]
  def change
    add_column :artifacts, :topic_id, :integer
  end
end
