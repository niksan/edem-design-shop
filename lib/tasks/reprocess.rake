namespace :reprocess do
  
  task :photos => :environment do
    Photo.all.each do |p|
      begin
        p.image.cache_stored_file!
        p.image.retrieve_from_cache!(p.image.cache_name)
        p.image.recreate_versions!
        p.save!
      rescue => e
        puts "ERROR: Photo: #{p.id} -> #{e.to_s}"
      end
    end
  end
end
