class Product < ApplicationRecord
  has_many :images
  has_many :images, dependent: :destroy
  has_many :images, dependent: :destroy
end
