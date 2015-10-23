class Store < ActiveRecord::Base
    has_many :reviews
    has_attached_file :image, styles: {large: "800x300>", medium: "320x150>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
    end
end
