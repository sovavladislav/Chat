class Group < ApplicationRecord
	validates :curator_id, presence: true
end
