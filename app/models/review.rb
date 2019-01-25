class Review < ApplicationRecord
  belongs_to :divingsite
  belongs_to :user
  acts_as_votable
end
