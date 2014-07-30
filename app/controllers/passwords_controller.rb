class PasswordsController < Devise::PasswordsController
	layout "iwill"
skip_before_filter :verify_authenticity_token
end
