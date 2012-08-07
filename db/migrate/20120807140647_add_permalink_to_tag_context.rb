class AddPermalinkToTagContext < ActiveRecord::Migration
  def self.up
    add_column :tag_contexts, :permalink, :string
    add_index :tag_contexts, :permalink
  end
  def self.down
    remove_column :tag_contexts, :permalink
  end
end