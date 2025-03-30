class Image < ApplicationRecord
  belongs_to :user
  has_many :image_categorizations, dependent: :destroy
  has_many :image_types, through: :image_categorizations

  has_one_attached :photo
  validate :validate_image_size

  validates :title, presence: true
  validates :photo, presence: true

  private

  def validate_image_size
    return unless photo.attached?

    if photo.byte_size > 10.megabytes
      errors.add(:photo, "ファイルサイズは10MBを超えることができません。")
    end
  end
end
