class Photo < ApplicationRecord
  has_one_attached :image
  validates :image, presence: true
  validates :name, presence: true, uniqueness: true
end
