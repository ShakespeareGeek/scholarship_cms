class EnhanceTags < ActiveRecord::Migration
  def up
    add_column :tags, :teaser, :string
    add_column :tags, :writeup, :text
  end

  def down
    remove_column :tags, :teaser
    remove_column :tags, :writeup
  end
end
