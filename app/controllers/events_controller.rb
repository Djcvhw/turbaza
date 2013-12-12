class EventsController < ApplicationController
  respond_to :html

  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.paginate(page: params[:page])
  end

  def show
  end

  def new
    @event = Event.new
    @events = Event.all
  end

  def edit
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)

    @event.save
    respond_with(@event)
  end

  def update
    @event.update(event_params)

    respond_with(@event)
  end

  def destroy
    @event.destroy
    respond_with(@event)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :country_id, :region_id, :city_id, :description)
  end
end