class AddTypeAndSizeToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :image_content_type, :string
    add_column :items, :image_file_size, :integer
  end

  def self.down
    remove_column :items, :image_content_type
    remove_column :items, :image_file_size
  end
end
