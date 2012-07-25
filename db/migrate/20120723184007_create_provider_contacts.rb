class CreateProviderContacts < ActiveRecord::Migration
  def self.up
    create_table :provider_contacts do |t|
      t.integer :provider_id
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :city
      t.integer :state_id
      t.string :postal_code
      t.string :email
      t.string :url, :length=>1024
      t.integer :sort_order
      t.string :label

      t.timestamps
    end
  end

  def self.down
    drop_table :provider_contacts
  end
end
