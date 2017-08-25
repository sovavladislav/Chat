class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :invites
  has_many :conversations, through: :invites

  ROLES = %w(professor student chair_head chair_ex_head lab_head assistant engineer)
end
