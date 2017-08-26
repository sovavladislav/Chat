class Invite < ApplicationRecord
  belongs_to :conversation
  belongs_to :user, class_name: 'User', foreign_key: "user_id"
end
