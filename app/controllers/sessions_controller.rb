class SessionsController < Devise::SessionsController
	layout "iwill"
skip_before_filter :verify_authenticity_token
end
