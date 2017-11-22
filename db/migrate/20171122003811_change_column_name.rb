class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :artifacts, :type, :media
  end
end
