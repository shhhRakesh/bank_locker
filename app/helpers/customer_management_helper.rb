module CustomerManagementHelper
	def btn_disable_state(status, user)
		return 'disabled' if user.status.eql? status
		''
	end
end
