class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :url
      t.string :submitter_email

      t.timestamps
    end
  end
end
