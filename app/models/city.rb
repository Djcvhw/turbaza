class City < ActiveRecord::Base
	belongs_to :region
	has_many :camps, dependent: :destroy
	validates :region_id, presence: true
end
