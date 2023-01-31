class CreateWorkstation < ActiveRecord::Migration[5.2]
  def change
    create_table :workstations do |t|
      t.interger :salon_id
      t.datetime :created_at
      t.datetime :updated_at
      t.string :name
      t.integer :stylist
      t.boolean :available
    end
  end
end
