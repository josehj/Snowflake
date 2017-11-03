class FormController < ApplicationController

  def story
  end

  def character
    @story = current_user.stories.find(params[:story_id])
    parameters = {}
    parameters['name'] =        params[:name].nil?        ? nil:   JSON.parse(params[:name])
    parameters['last_name'] =   params[:last_name].nil?   ? nil:   JSON.parse(params[:last_name])
    parameters['importance'] =  params[:importance].nil?  ? nil:   JSON.parse(params[:importance])
    parameters['summary'] =     params[:summary].nil?     ? nil:   JSON.parse(params[:summary])
    parameters['motivation'] =  params[:motivation].nil?  ? nil:   JSON.parse(params[:motivation])
    parameters['goal'] =        params[:goal].nil?        ? nil:   JSON.parse(params[:goal])
    parameters['epiphany'] =    params[:epiphany].nil?    ? nil:   JSON.parse(params[:epiphany])

    parameters['story_id'] = @story.id

    if (parameters['name'] && parameters['summary'])
      new_character = Character.create(parameters);
      if new_character.save
        data = {status: true}
        render json: data
      else
        data = {status: false}
        render json: data
      end
    end
  end

end
