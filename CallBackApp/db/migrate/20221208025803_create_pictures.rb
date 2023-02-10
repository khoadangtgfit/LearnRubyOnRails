class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.belongs_to :users, index: true

      t.timestamps
    end
  end
end
