class Api::JourneysController < ApplicationController
  def index
    @journeys = Journey.all
    render "index.json.jb"
  end

  def show
    @journey = Journey.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @journey = Journey.find_by(id: params[:id])
    @journey.name = params[:name] || journey.name
    @journey.price = params[:price] || journey.price
    @journey.save
    render "show.json.jb"
  end

  def destroy
    journey = Journey.find_by(id: params[:id])
    journey.destroy
    render json: { message: "Journey successfully destroyed." }
  end
end
