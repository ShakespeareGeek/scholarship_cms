class AddNumberOfAwards < ActiveRecord::Migration
  def self.up
    add_column :scholarships, :number_of_awards, :string
    add_column :scholarships, :one_time, :boolean
  end

  def self.down
    remove_column :scholarships, :number_of_awards
    remove_column :scholarships, :one_time
  end
end
