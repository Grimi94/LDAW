class Store < ActiveRecord::Base
    has_many :reviews
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
    end
end
