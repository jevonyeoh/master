class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :date
      t.boolean :attended
      t.text :remarks

      t.timestamps
    end
  end
end
