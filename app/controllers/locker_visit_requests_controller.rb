class LockerVisitRequestsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_locker_visit_request, only: [:update_visit_request]

  # GET /locker_visit_requests
  # GET /locker_visit_requests.json
  def index
    @locker_visit_requests = LockerVisitRequest.all
  end

  def update_visit_request
    status = params[:status]
    @locker_visit_request.visit_status = status
    if @locker_visit_request.save
      redirect_to locker_visit_requests_path, notice: "Request Status changed to #{status.capitalize}."
    else
      redirect_to locker_visit_requests_path, notice: "Failed to update the status!"
    end

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locker_visit_request
      @locker_visit_request = LockerVisitRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locker_visit_request_params
      params.require(:locker_visit_request).permit(:user_id, :visit_date_time, :visit_status)
    end
end
