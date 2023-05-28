class ReviewsController < ApplicationController
  http_basic_authenticate_with name: "mjakeman", password: "secret", only: :destroy

  def create
    @course = Course.find(params[:course_id])
    @review = @course.reviews.create(review_params)
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:course_id])
    @review = @course.reviews.find(params[:id])
    @review.destroy
    redirect_to course_path(@course), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:commenter, :body, :status)
  end
end
