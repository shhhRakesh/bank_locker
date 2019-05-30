module LockerApplicationHelper
    def pending_application?(user)
        !user.locker_requests.pending.empty?
    end

    def locker_application_ability(user)
        pending_application?(user) ? 'Applied' : 'Apply for Locker'
    end

    def application_btn_state(user)
        pending_application?(user) ? 'disabled' : nil
    end
end
