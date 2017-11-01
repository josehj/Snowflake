class StoryController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
  end

  def new
  end

  def show
    @story = current_user.stories.find(params[:id])
    if @story.nil?  
      redirect_to root_path
    end
  end

end
