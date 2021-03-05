class Api::AdventuresController < ApplicationController
  # before_action :authenticate_admin

  def index
    # @products = Product.where("name ILIKE '%light%'")
    # @products = Product.all.order(:price)
    # @products = Product.all.order(:price => :desc)

    @adventures = Adventure.all

    if params[:search]
      @adventures = @adventures.where("name ILIKE ?", "%#{params[:search]}%")
    end

    # if params[:discount] == "true"
    #   @adventures = @adventures.where("price < ?", 10)
    # end

    if params[:sort] == "updated_at" && params[:updated_at] == "desc"
      @adventures = @adventures.order(:updated_at => :desc)
    elsif params[:sort] == "accepted" && params[:accepted] == "asc"
      @adventures = @adventures.order(:accepted => :asc)
    else
      @adventures = @adventures.order(:id => :asc)
    end

    render "index.json.jb"
  end

  def show
    @adventure = Adventure.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @adventure = Adventure.new(
      title: params["title"],
      description: params["description"],
      cost: params["cost"],
      time_of_day: params["time_of_day"],
      duration: params["duration"],
      memory_post: params["memory_post"],
      memory_image: params["memory_image"],
      journey_id: params["journey_id"],
      accepted: params["accepted"],
    )

    @adventure.save
    render "show.json.jb"
    # if @adventure.save
    #   Image.create(journey_id: @journey.id, url: params[:image_url])
    #   render "show.json.jb"
    # else
    #   render json: { errors: @product.errors.full_messages, status: 422 }
    # end
  end

  def update
    @adventure = Adventure.find_by(id: params["id"])
    @adventure.title = params["title"] || @adventure.title
    @adventure.description = params["description"] || @adventure.description
    @adventure.cost = params["cost"] || @adventure.cost
    @adventure.time_of_day = params["time_of_day"] || @adventure.time_of_day
    @adventure.duration = params["duration"] || @adventure.duration
    @adventure.memory_post = params["memory_post"] || @adventure.memory_post
    @adventure.memory_image = params["memory_image"] || @adventure.memory_image
    @adventure.journey_id = params["journey_id"] || @adventure.journey_id
    @adventure.accepted = params["accepted"] || @adventure.accepted

    if @adventure.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages, status: 422 }
    end
  end

  def destroy
    adventure = Adventure.find_by(id: params["id"])
    adventure.destroy
    render json: { message: "adventure successfully destroyed!" }
  end
end
