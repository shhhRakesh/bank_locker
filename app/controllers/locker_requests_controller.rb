class LockerRequestsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_locker_request, only: [:update_locker_request]

  # GET /locker_requests
  # GET /locker_requests.json
  def index
    @locker_requests = LockerRequest.all
  end

  def update_locker_request
    status = params[:status]
    @locker_request.status = status
    if @locker_request.save
      # redirect_to new_locker_request_user_locker_path(@locker_request.id), notice: "Locker Request Approved. Please assign a Locker to User!"
      redirect_to locker_requests_path, notice: "Request Status changed to #{status.capitalize}."
    else
      redirect_to locker_requests_path, notice: "Failed to update the status!"
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locker_request
      @locker_request = LockerRequest.find(params[:id])
    end
end
