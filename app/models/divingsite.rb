class Divingsite < ApplicationRecord
  belongs_to :country
  has_many :reviews, dependent: :destroy
  has_many :reviews
  acts_as_votable
  has_attached_file :divesiteimage, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :divesiteimage, content_type: /\Aimage\/.*\z/
end
