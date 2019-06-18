class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artwork_views, class_name: :ArtworkShare, foreign_key: :viewer_id
    has_many :viewed_artworks, through: :artwork_views, source: :artwork
end