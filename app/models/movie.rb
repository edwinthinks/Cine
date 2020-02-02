# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :events, dependent: :destroy
end
