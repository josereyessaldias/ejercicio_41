class ActivitiesController < ApplicationController

	def create
		@activity = Activity.new
		@activity.name = params[:name]
		@activity.category_id = 1
		@activity.save
		@user_activity = UserActivity.new
		@user_activity.user_id = params[:user_id]
		@user_activity.activity_id = @activity.id
		@user_activity.save
		redirect_to root_path
	end
	
end
