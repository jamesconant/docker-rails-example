class CreateHealthChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :health_checks do |t|

      t.timestamps
    end
  end
end
