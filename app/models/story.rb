class Story < ApplicationRecord
  acts_as_taggable_on :tags

  def self.populate_from_Api
    newsapi = News.new(ENV['NEWSAPIKEY'])
    # /v2/everything
    all_articles = newsapi.get_everything(sources: 'bbc-news,associated-press,al-jazeera-english',
                                          language: 'en')
    all_articles.each do |article|
      Story.find_or_create_by({
                                publisher: article.name,
                                publish_date: article.publishedAt,
                                source_url: article.url,
                                image_url: article.urlToImage,
                                headline: article.title,
                                sub_headline: article.description,
                                article_body: article.content
                              })
    end
  end
end
