class CreateReasons < ActiveRecord::Migration
  def self.up
    create_table :reasons do |t|
      t.string :title
      t.text :argument
      t.string :image_file_name

      t.timestamps
    end
  end

  def self.down
    drop_table :reasons
  end
end
