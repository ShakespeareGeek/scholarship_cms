class CreateTagContexts < ActiveRecord::Migration
  def self.up
    create_table :tag_contexts do |t|
      t.string :label

      t.timestamps
    end
  end

  def self.down
    drop_table :tag_contexts
  end
end
