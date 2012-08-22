class CreateScholarshipComments < ActiveRecord::Migration
  def change
    create_table :scholarship_comments do |t|
      t.text :body
      t.string :author
      t.integer :scholarship_id

      t.timestamps
    end
  end
end
