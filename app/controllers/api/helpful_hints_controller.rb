class Api::HelpfulHintsController < ApplicationController
  # before_action :authenticate_admin

  def index
    @helpful_hints = HelpfulHint.all
    render "index.json.jb"
  end

  def show
    @helpful_hint = HelpfulHint.find_by(id: params["id"])
    render "show.json.jb"
  end

  def update
    @helpful_hint = HelpfulHint.find_by(id: params["id"])
    @helpful_hint.hint = params["hint"] || @helpful_hint.hint
    @helpful_hint.description = params["description"] || @helpful_hint.description
    @helpful_hint.hint_symbol = params["hint_symbol"] || @helpful_hint.hint_symbol

    if @helpful_hint.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages, status: 422 }
    end
  end

  def destroy
    helpful_hint = HelpfulHint.find_by(id: params["id"])
    helpful_hint.destroy
    render json: { message: "helpful_hint successfully destroyed!" }
  end
end
