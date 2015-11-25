class Tag < ActiveRecord::Base

    has_many :taggings
    has_many :stores, through: :taggings
end
