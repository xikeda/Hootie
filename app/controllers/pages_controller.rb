#The pages controller contains all code for anything under pages folder
class PagesController < ApplicationController
  
  #back-end code for pages/index
  def index
  end

  #back-end code for pages/index
  def home
  end

  #back-end code for pages/index
  def profile
    # Grab the username from the URL
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else 
      # Redirect to 404 error for now
      redirect_to root_path, :notice => "User not found!"
    end
  end

  #back-end code for pages/index
  def explore
  end
end
