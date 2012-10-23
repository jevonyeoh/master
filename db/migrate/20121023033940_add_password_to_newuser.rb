class AddPasswordToNewuser < ActiveRecord::Migration
  def change
    add_column :newusers, :password, :string

  end
end
