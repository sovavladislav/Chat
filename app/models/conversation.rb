class Conversation < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  has_many :users, through: :invites
  has_many :invites
  
  has_one :theme, class_name: "Theme", foreign_key: "theme_id"
  has_many :messages
end
