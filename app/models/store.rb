class Store < ActiveRecord::Base
    ratyrate_rateable
    
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
    end

end
