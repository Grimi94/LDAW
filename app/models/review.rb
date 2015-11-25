class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :store
    validates :ratings, presence: true
end
