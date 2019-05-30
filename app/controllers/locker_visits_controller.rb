class LockerVisitsController < ApplicationController
    before_action :authenticate_user!

    def index
        @locker_visit_requests = current_user.locker_visit_requests
    end
end
