class CreateInitialCategories < ActiveRecord::Migration
  def self.up
    ['Essentials', 'Clothes', 'Toiletries', 'Health', 'Gadgets', 'Equipment', 'Misc.', 'Custom'].each do |title|
    Category.create :title => title
    end
  end

  def self.down
  end
end
