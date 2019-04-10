class Activity < ApplicationRecord
	has_many :user_activity
	has_many :users, through: :user_activity

	belongs_to :category, optional: true
end
