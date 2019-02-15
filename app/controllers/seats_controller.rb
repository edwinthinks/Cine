class SeatsController < ApplicationController
    def index
        @event=Event.find(params[:event_id])        
        @event_capacity=@event.capacity
        #@seat=Seat.find(params[:id]) 
        @seat=Seat.all  
    end

    # def update
    #     @seat=Seat.find(params[:id])
    #     @seat.update(seat_params)
    #     redirect_to 
    # end

    private
    def seat_params
        params.require(:seat).permit(:status)
    end
end