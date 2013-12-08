class Camp < ActiveRecord::Base
	belongs_to :city
	validates :city_id, presence: true
end
