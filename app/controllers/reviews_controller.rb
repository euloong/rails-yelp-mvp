class ReviewsController < ApplicationController
  # before_action :find_restaurant, only: [:new, :create]

  # def new
  #   @review = Review.new
  # end

  def create
    # `restaurant_id` is required to asssociate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

  private

  # def find_restaurant
  # end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
