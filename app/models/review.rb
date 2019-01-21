class Review < ApplicationRecord
  belongs_to :divingsite
  belongs_to :user
  has_many :upvotes
end
