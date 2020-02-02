# frozen_string_literal: true

class ReservationsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    @reservations = user.reservations.includes(:seat)
  end

  def create
    reservation = Reservation.create!(user_id: current_user.id, seat_id: params[:seat_id])
    seat = Seat.find(params[:seat_id])
    seat.update(status: 'no disponible', reservation_id: reservation.id)

    redirect_to movie_event_seats_path
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def seat_params
    params.require(:seat).permit(:status)
  end
end
