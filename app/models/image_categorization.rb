class ImageCategorization < ApplicationRecord
  belongs_to :image
  belongs_to :image_type

  validates :image_id, uniqueness: { scope: :image_type_id } 
end
