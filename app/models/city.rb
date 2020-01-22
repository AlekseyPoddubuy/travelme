class City < ApplicationRecord
  belongs_to :contact
  has_many :points
end
