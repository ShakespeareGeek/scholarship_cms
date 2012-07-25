class CreateScholarships < ActiveRecord::Migration
  def self.up
    create_table :scholarships do |t|
      t.integer :provider_id
      t.string :name
      t.text :description
      t.text :requirements
      t.string :award_size, :length=>512
      t.date :deadline_date
      t.string :deadline_comment
      t.string :application_url, :length=>1024
      t.boolean :renewable

      t.timestamps
    end
  end

  def self.down
    drop_table :scholarships
  end
end
