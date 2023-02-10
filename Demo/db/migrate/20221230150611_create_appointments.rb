class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.belongs_to :physicains
      t.belongs_to :patients

      t.timestamps
    end
  end
end
