class User < ApplicationRecord
  has_many :reviews
  has_many :upvotes
  has_secure_password
end
