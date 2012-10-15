class CreateSexes < ActiveRecord::Migration
  def change
    create_table :sexes do |t|
      t.string :gender

      t.timestamps
    end
  end
end
