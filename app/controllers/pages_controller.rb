#The pages controller contains all code for anything under pages folder
class PagesController < ApplicationController
  
  #back-end code for pages/index
  def index
  end

  #back-end code for pages/index
  def home
    @posts = Post.all
    @newpost = Post.new
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
    
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newpost = Post.new
    
    @toFollow = User.all.last(5)
  end

  #back-end code for pages/index
  def explore
    @posts = Post.all
    @newPost = Post.new
        @toFollow = User.all.last(5)
  end
end
