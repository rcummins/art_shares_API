class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks, foreign_key: :artist_id, dependent: :destroy
    has_many :artwork_views,
        class_name: :ArtworkShare,
        foreign_key: :viewer_id,
        dependent: :destroy
    has_many :viewed_artworks, through: :artwork_views, source: :artwork
    has_many :comments, foreign_key: :author_id, dependent: :destroy
end