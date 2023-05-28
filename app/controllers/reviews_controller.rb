class ReviewsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @review = @course.reviews.create(review_params)
    redirect_to course_path(@course)
  end

  private
    def review_params
      params.require(:review).permit(:commenter, :body)
    end
end
