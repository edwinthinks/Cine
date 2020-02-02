# frozen_string_literal: true

class Seat < ApplicationRecord
  belongs_to :event
  belongs_to :reservation, optional: true
end
