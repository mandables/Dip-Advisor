class User < ApplicationRecord
  has_attached_file :profilepic, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\z/
  has_many :reviews
  has_many :upvotes
  has_secure_password
  acts_as_voter
  validates :username, uniqueness: true 

  def num_of_reviews
    self.reviews.count
  end

  def num_of_give_upvotes
  end

end
