class StoriesController < ApplicationController
  def index
    Story.all.json
  end
end
