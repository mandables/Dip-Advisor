class Review < ApplicationRecord
  belongs_to :divingsite
  belongs_to :user
  #   has_many :upvotes
  # acts_as_votable
end
