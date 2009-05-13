class AddMonthToBags < ActiveRecord::Migration
  def self.up
    add_column :bags, :month, :string
  end

  def self.down
    remove_column :bags, :month
  end
end
