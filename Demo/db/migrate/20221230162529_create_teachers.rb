class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.belongs_to :school

      t.timestamps
    end
  end
end
