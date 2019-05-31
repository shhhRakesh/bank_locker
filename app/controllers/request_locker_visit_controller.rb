class RequestLockerVisitController < ApplicationController
	before_action :authenticate_user!
  def index
  	@my_locker_visits= current_user.locker_visit_requests  
  end
end
