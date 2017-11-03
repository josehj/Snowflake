class CharacterController < ApplicationController

  def show
    @character = current_user.stories.find(params[:story_id]).characters.find(params[:id])
    if @character.nil?
      redirect_to root_path
    end
  end
end
