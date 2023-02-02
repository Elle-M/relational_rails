class CreateWorkstation < ActiveRecord::Migration[5.2]
  def change
    create_table :workstations do |t|
      t.string :name
      t.integer :chair_count
      t.boolean :available

      t.timestamp
    end
  end
end
