class Artwork < ApplicationRecord
    validates :title, :image_url, presence: true
    validates :title, uniqueness: { scope: :artist_id, 
        message: "has already been used by this artist"}

    belongs_to :artist, class_name: :User
    has_many :artwork_shares, dependent: :destroy
    has_many :shared_viewers, through: :artwork_shares, source: :viewer
    has_many :comments, dependent: :destroy
end