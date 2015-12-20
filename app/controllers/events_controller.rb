class EventsController < ApplicationController
  def new
    @event = Event.new
  end



  def index
  end

  def show
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
      if @event.save
        redirect_to root_path
      else
        flash[:danger] = "Try again"
        render 'events/new'
      end
  end



  private
    def event_params
      params.require(:event).permit(:date,:location,:players_amount,:price_for_each_player,:additional_info)
    end


end
