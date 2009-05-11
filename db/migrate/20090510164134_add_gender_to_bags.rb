class AddGenderToBags < ActiveRecord::Migration
  def self.up
    add_column :bags, :gender, :string, :default => 'N/A'
  end

  def self.down
    remove_column :bags, :gender
  end
end
