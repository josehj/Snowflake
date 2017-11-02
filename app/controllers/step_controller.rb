class StepController < ApplicationController
  before_action :authenticate_user!

  def one
    @story = current_user.stories.find(params[:story_id])
    sentence = params[:sentence].nil?   ? nil:   JSON.parse(params[:sentence])
    Rails.logger.debug("My object: #{sentence.nil?.inspect}")
    Rails.logger.debug("....................................................................................")
    if sentence
      @story.sentence = sentence
      if @story.save
        data = {status: true}
        render json: data
      else
        data = {status: false}
        render json: data
      end
    end
  end

  def two
  end

  def three
  end

  def four
  end

  def five
  end

  def six
  end

  def seven
  end

  def eight
  end

  def nine
  end

  def ten
    @user = current_user
  end

end
