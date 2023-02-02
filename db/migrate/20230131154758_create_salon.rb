class CreateSalon < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :city
      t.integer :stars
      t.boolean :requires_insurance

      t.timestamp
    end
  end
end
