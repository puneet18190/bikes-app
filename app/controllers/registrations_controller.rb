class RegistrationsController < Devise::RegistrationsController
	layout "iwill"

def create
     super do |resource|
     #  render :text => params[:user][:admin] and return
	if params[:user][:admin] != 0
		resource.admin = params[:user][:admin]
	else
		resource.admin = 0
	end
     end
   end
end
