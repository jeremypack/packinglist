class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|

      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "category_id"
      t.string   "image_file_name"
      t.string   "buy_now"
      t.string   "tip"
    end
  end

  def self.down
    drop_table :items
  end
end
