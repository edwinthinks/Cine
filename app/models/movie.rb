class Movie < ApplicationRecord
  has_many :events, dependent: :destroy

  validates_presence_of :name, :duration, :synopsis, :genre, :trailer, :image, :big_image
end
