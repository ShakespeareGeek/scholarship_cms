class CreateScholarshipProviders < ActiveRecord::Migration
  def self.up
    create_table :scholarship_providers do |t|
      t.string :name
      t.string :url
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :scholarship_providers
  end
end
