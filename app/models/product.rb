class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews
  validates_presence_of :description, :title
  validates :price, :presence=>true, numericality: {greater_than_or_equal_to: 0.00},
            format: {with: /\A\d+(\.\d{1,2})?\z/}

  def average_rating
    sum = 0.0
    reviews.each do |review|
      sum += review.rating
    end
    sum/reviews.count
  end

  def added_by
    User.find(self.user_id).firstname + " " + User.find(self.user_id).lastname
  end
end