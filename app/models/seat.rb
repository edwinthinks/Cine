class Seat < ApplicationRecord
    belongs_to :event
    belongs_to :reservation
end
