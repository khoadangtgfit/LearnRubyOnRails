class CreatePhysicains < ActiveRecord::Migration[6.1]
  def change
    create_table :physicains do |t|
      t.string :name

      t.timestamps
    end
  end
end
