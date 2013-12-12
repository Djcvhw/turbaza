class Event < ActiveRecord::Base
  belongs_to :country
  belongs_to :region
  belongs_to :city

  validates :name, presence: true
  
end