class User::RegistrationsController < Devise::RegistrationsController
	before_filter :configure_permitted_parameters

	protected

	def configure_permitted_parameters
		devise_paramater_sanatizer.for(:sign_up).push(:first_name, :last_name)
		devise_paramater_sanatizer.for(:account_update).push(:first_name, :last_name)
	end

end