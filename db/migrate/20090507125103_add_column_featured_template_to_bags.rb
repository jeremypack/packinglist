class AddColumnFeaturedTemplateToBags < ActiveRecord::Migration
  def self.up
    add_column :bags, :featured, :boolean, :default => false
    add_column :bags, :template, :boolean, :default => false
  end

  def self.down
    remove_column :bags, :template
    remove_column :bags, :featured
  end
end
