class AddIconToList < ActiveRecord::Migration
  def up
    add_column :tags, :icon, :string
  end

  def down
    remove_column :tags, :icon
  end
end
