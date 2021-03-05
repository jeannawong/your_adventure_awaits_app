class Api::AdventuresHelpfulHintsController < ApplicationController
  # before_action :authenticate_admin

  def index
    @adventures_helpful_hints = AdventureHelpfulHint.all
    render "index.json.jb"
  end

  def show
    @adventure_helpful_hint = AdventureHelpfulHint.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @adventure_helpful_hint = AdventureHelpfulHint.new(
      adventure_id: params["adventure_id"],
      helpful_hint_id: params["helpful_hint_id"],
    )

    @adventure_helpful_hint.save
    render "show.json.jb"
    # if @adventure.save
    #   Image.create(journey_id: @journey.id, url: params[:image_url])
    #   render "show.json.jb"
    # else
    #   render json: { errors: @product.errors.full_messages, status: 422 }
    # end
  end

  def update
    @adventure_helpful_hint = AdventureHelpfulHint.find_by(id: params["id"])
    @adventure_helpful_hint.adventure_id = params["adventure_id"] || @adventure_helpful_hint.adventure_id
    @adventure_helpful_hint.helpful_hint_id = params["helpful_hint_id"] || @adventure_helpful_hint.helpful_hint_id

    if @adventure_helpful_hint.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages, status: 422 }
    end
  end

  def destroy
    adventure_helpful_hint = AdventureHelpfulHint.find_by(id: params["id"])
    adventure_helpful_hint.destroy
    render json: { message: "adventure_helpful_hint successfully destroyed!" }
  end
end
