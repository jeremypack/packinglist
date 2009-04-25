class CreateInitialCategories < ActiveRecord::Migration
  def self.up
    ['Clothes', 'Toiletires', 'Equipment', 'Everything Else'].each do |title|
    Category.create :title => title
    end
  end

  def self.down
  end
end
