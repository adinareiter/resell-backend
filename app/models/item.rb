class Item < ApplicationRecord
  has_many :joins
  has_many :categories, through: :joins
  belongs_to :user
  has_many :images
end
