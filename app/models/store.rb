class Store < ActiveRecord::Base
    has_many :reviews
    belongs_to :user
    
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
    end
end
