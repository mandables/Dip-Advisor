class Country < ApplicationRecord
  has_many :divingsites
  has_many :reviews, through: :country

  def self.has_a_diving_site
    Country.all.select { |country|
      country.divingsites.count > 0}
  end
end
