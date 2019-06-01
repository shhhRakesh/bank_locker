class RequestLockerVisitController < ApplicationController
  before_action :authenticate_user!
  def index
    @appointment = LockerVisitRequest.new
  	@my_locker_visits= current_user.locker_visit_requests
  end

  def create_appointment
  	@appointment = LockerVisitRequest.new
  	@appointment.assign_attributes(appointment_params)
  	@appointment.assign_attributes(user: current_user, visit_status: :pending)
  	if @appointment.save
  		redirect_to request_locker_visit_path, notice: "Appointment Created. Please wait for confirmation!"
  	else
  		redirect_to request_locker_visit_path, notice: "Could not save Appointment. Please contact Admin!"
  	end
  end

  private
  def appointment_params
      params.require(:appointment).permit(:visit_date_time)
    end

end
