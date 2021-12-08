class StoriesController < ApplicationController
  include StoriesHelper
  def index
    @pagy, @stories = pagy(Story.all.order(publish_date: :desc))
    @stories.map do |story|
      story.tag_list = StoriesHelper.add_to_tag_list(story)
    end
    render json: { data: @stories,
                   pagy: pagy_metadata(@pagy) }
  end
end
