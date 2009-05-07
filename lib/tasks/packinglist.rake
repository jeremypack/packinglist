namespace :packinglist do
  
  task :import_items => :environment do
    path = File.join(RAILS_ROOT, 'db/items.txt')
    unless File.exists?(path)
      raise 'File db/items.txt does not exist'
    end
    
    default_category = Category.last
    
    File.read(path).split(/\n/).each do |name|
      unless name.blank?
        
        item = Item.find_or_create_by_name(name)
        
        if item.category.nil?
          item.category = default_category
          item.save
        end
        
        image_path = File.join(RAILS_ROOT, "db/itemphotos/#{name.downcase}.gif")
        if File.exists?(image_path)
          item.image = File.open(image_path)
          item.save
        else
          puts "No image found for #{name} in #{image_path}"
        end
        
      end
    end

    puts 'Done'
  end

end