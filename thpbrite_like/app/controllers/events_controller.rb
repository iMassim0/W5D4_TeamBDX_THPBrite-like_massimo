class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @current_user = current_user
    @event = Event.new(params_event)
    @event.creator_id = @current_user.id
    @event.save
    if @event.errors.full_messages.empty?

      flash[:succes] = 'Event enregistré !'
      redirect_to events_path
    else
      flash[:error] = 'Error'
      redirect_to events_path
    end
  end

  def show
    @event = Event.find(params[:id])
  end


  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def update

  end

  def index
    @events = Event.all
  end

  private

  def params_event
    params_event = params.require(:event).permit(:description, :place, :date, :id)
  end
end
