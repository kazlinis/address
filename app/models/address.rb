class Address < ApplicationRecord
	max_paginates_per 5
	validates :company, :title, :street_name, :city, :country, :postal_code, :phone_number, presence: true
end
