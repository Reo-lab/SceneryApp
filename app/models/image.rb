class Image < ApplicationRecord
  belongs_to :user
  has_many :image_categorizations, dependent: :destroy
  has_many :image_types, through: :image_categorizations

  has_one_attached :photo

  validates :title, presence: true
  validates :photo, presence: true
end
