class CreateBags < ActiveRecord::Migration
  def self.up
    create_table :bags do |t|

      t.timestamps
      t.string 'name', :defult => 'my list'
      t.integer 'user_id'
    end
  end

  def self.down
    drop_table :bags
  end
end
