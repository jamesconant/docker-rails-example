class AddNoteToHealthCheck < ActiveRecord::Migration[5.2]
  def change
    add_column :health_checks, :note, :text
  end
end
