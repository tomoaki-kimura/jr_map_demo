class Picture < ApplicationRecord
  has_one_attached :picture
  validates :title, presence: true, length: { maximum: 100 }
  validates :memo, length: { maximum: 1000 }
end
