class AddFieldnameEmailToNewusers < ActiveRecord::Migration
  def change
    add_column :newusers, :email, :string

  end
end
