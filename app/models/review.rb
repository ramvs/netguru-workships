class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  validates :content, presence: true
  validates :rating, presence: true
  validates :user_id, presence: true

  def review_of_product
    Product.find(self.product_id)
  end

  def reviewed_product_category
    Category.find(review_of_product.category_id)
  end
end
