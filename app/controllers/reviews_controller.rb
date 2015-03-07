class ReviewsController < ApplicationController

  expose(:review)
  expose(:product)

  def edit
  end

  def create
    self.review = Review.new(review_params,current_user)
    review[:user_id] = current_user[:id]
    unless Review.exists?( {product_id: product[:id], user_id: current_user[:id]})
      if review.save
        product.reviews << review
        redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
      else
        flash[:error] = "Fill all fields reviews"
        redirect_to category_product_url(product.category, product)
      end
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
