class Store < ActiveRecord::Base
    #before_action :verify_is_approved, only: [:index]
    has_many :reviews
    has_many :taggings
    has_many :tags, through: :taggings
    has_attached_file :image, styles: {large: "800x300>", medium: "320x150>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    belongs_to :user
    geocoded_by :address
    after_validation :geocode
    
    scope :approved, -> {where(:approved => true)}
    scope :pending, -> {where(:approved => false)}
    def self.search(search)
        where("lower(name) LIKE ?", "%#{search.downcase}%") 
    end
    
    def address
        "#{self.street}, #{self.city}, #{self.state}"
    end
    
    def self.tagged_with(name)
        begin
          Tag.find_by_name!(name).stores
          rescue
        end
        
    end
    
      def self.tag_counts
        Tag.select("tags.*, count(taggings.tag_id) as count").
          joins(:taggings).group("taggings.tag_id")
      end
      
      def tag_list
        tags.map(&:name).join(", ")
      end
      
      def tag_list=(names)
        self.tags = names.split(",").map do |n|
          Tag.where(name: n.strip).first_or_create!
        end
      end
end
