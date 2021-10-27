class Picture < ApplicationRecord
  has_one_attached :picture
  validates :title, presence: true, length: { maximum: 15 }
  validates :memo, length: { maximum: 1000 }
  
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
end
