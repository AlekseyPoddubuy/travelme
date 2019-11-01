class City < ApplicationRecord
  belongs_to :contact
  extend FriendlyId
	friendly_id :title, use: :slugged
end
