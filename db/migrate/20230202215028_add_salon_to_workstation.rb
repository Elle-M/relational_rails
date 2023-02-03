class AddSalonToWorkstation < ActiveRecord::Migration[5.2]
  def change
    add_reference :workstations, :salon, foreign_key: true
  end
end
