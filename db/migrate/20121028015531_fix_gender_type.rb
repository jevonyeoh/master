class FixGenderType < ActiveRecord::Migration
  def up
    rename_column :genders, :type, :maleorfemale
  end

  def down
  end
end
