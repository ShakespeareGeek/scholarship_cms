class CreateTags < ActiveRecord::Migration
  def self.up
    create_table :tags do |t|
      t.string :label
      t.integer :tag_context_id

      t.timestamps
    end
    
    create_table :scholarships_tags, :id => false do |t|
      t.references :scholarship, :tag
    end

    add_index :scholarships_tags, [:scholarship_id, :tag_id]
  end

  def self.down
    drop_table :tags
    drop_table :scholarships_tags
  end
end
