class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :publisher, presence: true
      t.datetime :publish_date
      t.text :source_url
      t.text :image_url
      t.text :headline, presence: true
      t.text :sub_headline
      t.text :article_body
      t.timestamps
    end
  end
end
