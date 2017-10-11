class Group < ApplicationRecord
	validates :curator_id, presence: true

	belongs_to :curator, class_name: "User", foreign_key: "user_id"
end
