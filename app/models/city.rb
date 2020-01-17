class City < ApplicationRecord
  belongs_to :contact
  has_many :points
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  extend FriendlyId
	friendly_id :title, use: :slugged
end
