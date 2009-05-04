class CreateInitialCategories < ActiveRecord::Migration
  def self.up
    ['Essentials', 'Clothes', 'Toiletires', 'Health', 'Gadgets', 'Equipment', 'Misc.', 'User Defined'].each do |title|
    Category.create :title => title
    end
  end

  def self.down
  end
end
