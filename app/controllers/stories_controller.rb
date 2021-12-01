class StoriesController < ApplicationController
  def index
    @stories = Story.all.order(publish_date: :desc)
    render json: @stories
  end
end
