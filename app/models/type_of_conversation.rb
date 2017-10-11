class TypeOfConversation < ApplicationRecord
	with_options presence: true do
  	validates :name, :main_role, :available_roles
  end
end
