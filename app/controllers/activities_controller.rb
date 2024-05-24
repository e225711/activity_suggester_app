class ActivitiesController < ApplicationController
  def index
  end

  def search
    type = params[:type]

    if type == 'random'
      activity = BoredApiHelper.get_random_activity
    else
      activity = BoredApiHelper.filter_activities(type)
    end

    render json: activity
  end
end
