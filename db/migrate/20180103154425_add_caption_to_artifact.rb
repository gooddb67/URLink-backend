class AddCaptionToArtifact < ActiveRecord::Migration[5.1]
  def change
    add_column :artifacts, :caption, :string
  end
end
