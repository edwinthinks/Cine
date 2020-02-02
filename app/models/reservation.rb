# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :seat

  def event
    seat.event
  end

  def movie
    event.movie
  end
end
