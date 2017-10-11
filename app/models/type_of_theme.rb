class TypeOfTheme < ApplicationRecord
	has_many :themes

	validates :name, presence: true
end
