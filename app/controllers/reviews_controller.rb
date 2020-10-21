class ReviewsController < ApplicationController
  def create
    @champion = Champion.find(params[:champion_id])
    @review = Review.new(review_params)
    @review.champion = @champion
    if @review.save
      redirect_to champion_path(@champion)
    else
      render "champions/show"
    end
  end
end
