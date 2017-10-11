class Theme < ApplicationRecord
	belongs_to :type_of_theme

	validates :name, :type_of_theme_id, presence: true
end
