class AddUsernameToNewuser < ActiveRecord::Migration
  def change
    add_column :newusers, :username, :string

  end
end
