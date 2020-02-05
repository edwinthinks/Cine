class Seat < ApplicationRecord
    belongs_to :event
    belongs_to :reservation, optional: true

    validates_presence_of :name, :event_id, :price, :reservation_id, :status
end
