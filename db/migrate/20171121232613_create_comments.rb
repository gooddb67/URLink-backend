class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :artifact_id
      t.text :content

      t.timestamps
    end
  end
end
