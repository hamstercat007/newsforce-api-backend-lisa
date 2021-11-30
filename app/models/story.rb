class Story < ApplicationRecord
  acts_as_taggable_on :tags

  def self.populate_from_api
		Story.get_articles(['al-jazeera-english']).each do |article|
			Story.find_or_create_by({
				publisher: article.name,
				publish_date: article.publishedAt,
				source_url: article.url,
				image_url: article.urlToImage,
				headline: article.title,
				sub_headline: article.description,
				article_body: article.content
			}) #,'associated-press','tech-crunch'
    end
  end

	def self.get_articles(publishers)
		articles = []
		newsapi = News.new(ENV['NEWSAPIKEY'])
		publishers.each do |publisher|
			articles << newsapi.get_top_headlines(sources: publisher)
		end
		return articles.flatten!
	end
end
