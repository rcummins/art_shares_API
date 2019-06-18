class ArtworkShare < ApplicationRecord
    validates :artwork_id, uniqueness: { scope: :viewer_id,
        message: "has already been shared with this user"}

    belongs_to :artwork
    belongs_to :viewer, class_name: :User
end
