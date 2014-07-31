class UsersController < ApplicationController
# before_filter :authenticate_user!
  # GET /users
  # GET /users.json
  layout 'iwill'

  def index
    @users = User.all 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /bikes/1
  # GET /bikes/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /bikes/new
  # GET /bikes/new.json
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :admin)

    end
end
