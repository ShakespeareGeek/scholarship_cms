class UpdateScholarshipWithAwardRange < ActiveRecord::Migration
  def self.up
    add_column :scholarships, :award_min, :integer
    add_column :scholarships, :award_max, :integer
  end

  def self.down
    remove_column :scholarships, :award_min
    remove_column :scholarships, :award_max
  end
end
