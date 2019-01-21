class Country < ApplicationRecord
  has_many :divingsites
  has_many :reviews, through: :country
end
