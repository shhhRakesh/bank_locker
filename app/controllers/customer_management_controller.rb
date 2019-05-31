class CustomerManagementController < ApplicationController
	before_action :authenticate_admin!
	def index
		@users= User.all
	end
	def update_status
		@user= User.find params[:id]
		@user.approved! if params[:status].eql? 'approved'
		@user.rejected! if params[:status].eql? 'rejected'
		redirect_to customer_list_path, notice: "User status updated to #{@user.status.humanize}"
	end
end
