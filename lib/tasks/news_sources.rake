require 'dotenv/tasks'

namespace :news_sources do
  desc 'Query News API and save in database'
  task news_api: :environment do
    Story.populate_from_api
  end
end