class Contact < ApplicationRecord
	has_many :cities	
	extend FriendlyId
	friendly_id :title, use: :slugged
end
