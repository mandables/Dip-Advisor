class User < ApplicationRecord
  has_many :reviews
  has_many :upvotes
  has_secure_password
  acts_as_voter

  def num_of_reviews
    self.reviews.count
  end

  def num_of_give_upvotes
  end

end
