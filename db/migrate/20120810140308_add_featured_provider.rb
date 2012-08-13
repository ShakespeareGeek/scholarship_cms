class AddFeaturedProvider < ActiveRecord::Migration
  def up
    add_column :scholarship_providers, :featured_position, :integer
  end

  def down
    remove_column :scholarship_providers, :featured_position
  end
end
