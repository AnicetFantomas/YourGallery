class Image < ApplicationRecord
    has_one_attached :image
    validates :image, presence: true
    validates :title, presence: true
    validates :description, presence: true
end
