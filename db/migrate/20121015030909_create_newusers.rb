class CreateNewusers < ActiveRecord::Migration
  def change
    create_table :newusers do |t|
      t.string :name
      t.decimal :year
      t.string :email
      t.string :gender
      t.string :major

      t.timestamps
    end
  end
end
