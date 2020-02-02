# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :movie
  has_many :seats, dependent: :destroy

  def next_seat_name
    alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    letra = alpha[seats.length / 20]
    numero = (seats.length % 20) + 1
    letra + numero.to_s
  end

  def add_seat
    seats.create(name: next_seat_name, price: 12_000, status: 'disponible')
  end

  def update_seats
    while capacity != seats.length
      if capacity > seats.length
        add_seat
      else
        seats.last.delete
      end
    end
  end
end
