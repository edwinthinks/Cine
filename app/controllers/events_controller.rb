class EventsController < ApplicationController
    def index
        @movie=Movie.find(params[:movie_id])
        @event=@movie.events.all        
    end
    def show
        @movie=Movie.find(params[:movie_id])
        @event=@movie.events.find(params[:id])
    end

    def new
        @movie=Movie.find(params[:movie_id])
        @event=Event.new
    end

    def create
        @movie=Movie.find(params[:movie_id])
        @event = @movie.events.create(events_params)
        @event.update(time_end: @event.time_start + @movie.duration.minutes)
        @event.update(movie_id: @movie.id)    
        
        
        @event.update_seats               
        redirect_to movie_events_path
    end

    def edit
        @movie=Movie.find(params[:movie_id])
        @event=Event.find(params[:id])
    end
    def update
        @event=Event.find(params[:id])
        @event.update(events_params)
        @event.update(time_end: @event.time_start + @event.movie.duration.minutes)
        @event.update(movie_id: params[:movie_id])
        
        @event.update_seats
        redirect_to movie_events_path
    end

    def destroy
        @event=Event.find(params[:id])
        @event.destroy
        redirect_to movie_events_path
    end

    # def create_seats
    #     @event_capacity=@event.capacity 
    #     alpha="ABCDEFGHIJKLMNOPQRSTUVWXYZ".chars
    #     @filas=@event_capacity/5
    #     i=0
    #     @event_id=Event.last
    #     while i<5
    #         @filas.times do |seat|
    #             silla= seat+2
    #             letra= alpha[i]
    #             seat_event=@event_id.seats.create(name: "#{letra+silla.to_s}",price: 12000, status: "disponible")
    #             silla-=1
    #         end
    #         i+=1
    #     end
    # end

    private
    def events_params
        params.require(:event).permit(:date,:time_start,:time_end,:capacity,:hall)
    end

end