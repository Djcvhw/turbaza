class Event < ActiveRecord::Base
  belongs_to :country
  belongs_to :region
  belongs_to :city

  validates :name, presence: true
  validates :country, presence: true
  validates :region, presence: true
  validates :city, presence: true
end