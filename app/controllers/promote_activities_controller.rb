class PromoteActivitiesController < ApplicationController
  authorize_resource

  def index
  	@user = User.find(params[:user_id])
  	@promotes = PromoteActivity.where(user_id: params[:user_id], payed: false)
  end
end
