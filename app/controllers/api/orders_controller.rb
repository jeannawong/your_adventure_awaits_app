class Api::OrdersController < ApplicationController
  def index
    @orders = current_user.orders
    #OR @orders = Order.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def create
    # Open the products table
    # Find the product with an id that matches the product_id given by the user
    journey = Journey.find_by(id: params[:journey_id])
    # Get the price from the product and multiply it by the quantity given by the user
    calculated_subtotal = journey.price
    # Calculate tax and total
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    # Save the order in the database
    @order = Order.new(
      user_id: params[:user_id],
      journey_id: params[:journey_id],
      review_rating: params[:review_rating],
      review_comment: params[:review_comment],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    @order.save
    render "show.json.jb"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jb"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { status: "Carted product successfully removed!" }
  end
end
