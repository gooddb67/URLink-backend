class CreateArtifacts < ActiveRecord::Migration[5.1]
  def change
    create_table :artifacts do |t|
      t.string :type
      t.string :url
      t.integer :subtopicId

      t.timestamps
    end
  end
end
