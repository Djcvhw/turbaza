class Country < ActiveRecord::Base
	has_many :regions, dependent: :destroy
end
