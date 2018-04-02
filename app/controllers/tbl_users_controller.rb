class TblUsersController < ApplicationController
  def new
  	@user = TblUser.new
  end

  def show
    @user = TblUser.find(params[:id])
    @userDogs= TblDog.where(tbl_users_id: params[:id])
  end

  def create
    @user = TblUser.new(user_params)
    if @user.save
        if logged_in?
        flash[:success] = "User Created"
            redirect_to tbl_users_url    
        else
          log_in @user
          flash[:success] = "Welcome to The Dog House"
          redirect_to @user
        end            
    
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private

    def user_params
        params.require(:tbl_user).permit(:firstName, :lastName, :email, :password,
            :password_confirmation, :phoneNumber, :address, :postalCode)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    

end
