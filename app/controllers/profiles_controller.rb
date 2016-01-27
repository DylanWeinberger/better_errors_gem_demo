class ProfilesController < ApplicationController

	def index
	@profile = Profile.all
    @users = User.all
    # Sets these two variables so we can display users and their profiles.
	end

	def show
		@profile = Profile.find(params[:id])
    # Finds the correct profile by the profile's id.
	end

	def new
		@profile = Profile.new
	end

  def create
  	@profile = Profile.new(profile_params)
    # passes strong params thorugh new profile.
    @user = current_user
      
      if @profile.save
        current_user
        @profile.user_id = session[:user_id]
        @profile.save
        # Sets the user_id of the profile to the current_user logged in. And resaves.
    		redirect_to users_path @user
    		flash[:notice] = "New profile has been entered."
    	else
    		redirect_to :back
    		flash[:notice] = "There was a problem creating your profile."
    	end
  end

  def edit
    @profile = Profile.find(params[:user_id])
  end

  def update
    @profile = Profile.find(params[:id])
    @user = current_user
    if @profile != nil
      if current_user.id == @profile.user_id
         @profile.update(profile_params)
         redirect_to user_path @user
         flash[:notice] = "Profile Updated!"
      else
        redirect_to user_path @user
        flash[:alert] = "Nice Try Buddy. Not your profile."
      end
    else
        redirect_to new_profile_path
    end  
  end

  private
  
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :city, :age)
  end

end

