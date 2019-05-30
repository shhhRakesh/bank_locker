class LockerApplicationController < ApplicationController
  before_action :authenticate_user!
  before_action :set_locker_application, only: [:destroy]
  def index
    @locker_applications= current_user.locker_requests
  end

  def make_locker_application
    date = Date.today
    locker_application = LockerRequest.new(user_id: current_user.id, request_date: date, status: :pending)
    if locker_application.save
        redirect_to locker_requests_url, notice: 'Application was successfully submitted.'
    else
        redirect_to locker_requests_url, notice: 'Application could not be submitted, Please try again!'
    end
  end

  def destroy
    @locker_application.destroy
    redirect_to locker_requests_url, notice: 'Application was successfully destroyed.'
  end

  private

  def set_locker_application
    @locker_application = LockerRequest.find params[:id]
  end
end
