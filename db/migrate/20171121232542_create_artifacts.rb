class CreateArtifacts < ActiveRecord::Migration[5.1]
  def change
    create_table :artifacts do |t|
      t.string :type
      t.string :url
      t.integer :subtopic_id

      t.timestamps
    end
  end
end
