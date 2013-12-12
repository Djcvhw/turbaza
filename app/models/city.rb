class City < ActiveRecord::Base
	belongs_to :region
	belongs_to :country
	has_many :events, dependent: :destroy
	validates :region_id, presence: true
end
