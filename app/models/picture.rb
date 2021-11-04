class Picture < ApplicationRecord
  has_one_attached :picture
  validates :title, presence: true, length: { maximum: 15 }
  validates :memo, length: { maximum: 1000 }
  validate :image_presence

  def latitude
    if picture.attached?
      picture.metadata["latitude"]
    end
  end
  
  def longitude
    if picture.attached?
      picture.metadata["longitude"]
    end
  end

  def image_presence
    if picture.attached?
      if !picture.content_type.in?(%('image/jpeg image/png'))
        errors.add(:picture, 'にはjpegまたはpngファイルを添付してください')
      end
    else
      errors.add(:picture, 'ファイルを添付してください')
    end
  end
end
