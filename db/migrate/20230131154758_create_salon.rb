class CreateSalon < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.string :name
      t.string :city
      t.integer :stars
      t.boolean :requires_insurance
    end
  end
end
