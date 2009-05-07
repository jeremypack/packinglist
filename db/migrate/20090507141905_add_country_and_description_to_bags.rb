class AddCountryAndDescriptionToBags < ActiveRecord::Migration
  def self.up
    add_column :bags, :description, :text
    add_column :bags, :country, :string, :default => 'United Kingdom'
  end

  def self.down
    remove_column :bags, :description
    remove_column :bags, :country
  end
end
