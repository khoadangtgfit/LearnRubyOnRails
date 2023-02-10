class CreateHelus < ActiveRecord::Migration[7.0]
  def change
    create_table :helus do |t|
      t.string :username
      t.string :helu

      t.timestamps
    end
  end
end
