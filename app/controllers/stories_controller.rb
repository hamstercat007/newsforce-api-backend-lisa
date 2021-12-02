class StoriesController < ApplicationController
  include StoriesHelper
  def index
    @stories = Story.all.order(publish_date: :desc)
    @stories.map do |story|
      story.tag_list = StoriesHelper.add_to_tag_list(story)
    end
    render json: @stories
  end
end