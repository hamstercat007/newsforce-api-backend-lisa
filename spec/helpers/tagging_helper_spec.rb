require './app/helpers/stories_helper.rb'

describe StoriesHelper do
  @mock =  {
    "id": 143,
    "publisher": "Associated Press",
    "publish_date": "2021-12-02T05:56:14.000Z",
    "source_url": "https://apnews.com/36b68bd9e0c701fea8e6b11f00292604",
    "image_url": "https://storage.googleapis.com/afs-prod/media/a807a7db883c49798b468fd3a221c6b6/3000.jpeg",
    "headline": "Jan. 6 panel votes to hold former DOJ official in contempt",
    "sub_headline": "WASHINGTON (AP) — The House panel investigating the Jan. 6 U.S. Capitol insurrection has voted to pursue contempt charges against Jeffrey Clark, a former Justice Department official who refused to answer the committee's questions — but the panel agreed to let…",
    "article_body": "WASHINGTON (AP) — The House panel investigating the Jan. 6 U.S. Capitol insurrection has voted to pursue contempt charges against Jeffrey Clark, a former Justice Department official who refused to an… [+6359 chars]",
    "created_at": "2021-12-02T06:20:30.860Z",
    "updated_at": "2021-12-02T06:20:30.860Z",
    "tag_list": []
  }

  it 'creates a tag list ' do
    expect(StoriesHelper.add_to_tag_list(@mock)).to eq ''
  end
end