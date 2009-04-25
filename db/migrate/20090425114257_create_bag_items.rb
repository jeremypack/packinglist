class CreateBagItems < ActiveRecord::Migration
  def self.up
    create_table :bag_items do |t|

      t.timestamps
      t.integer 'item_id', 'bag_id', 'quantity'
      t.boolean 'packed', :default => 0
    end
  end

  def self.down
    drop_table :bag_items
  end
end
