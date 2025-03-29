class ImageType < ApplicationRecord
  has_many :image_categorizations, dependent: :destroy
  has_many :images, through: :image_categorizations

  validates :name, presence: true, uniqueness: true
end
