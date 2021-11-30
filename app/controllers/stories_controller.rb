class StoriesController < ApplicationController
  def index
    @story = Story.first

    render json: @story
  end
end
