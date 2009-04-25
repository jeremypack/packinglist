class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|

      t.timestamps
      t.string   "title"
    end
  end

  def self.down
    drop_table :categories
  end
end
