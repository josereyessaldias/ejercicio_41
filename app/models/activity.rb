class Activity < ApplicationRecord
	has_many :user_activity, dependent: :destroy
	has_many :users, through: :user_activity

	belongs_to :category, optional: true
end
