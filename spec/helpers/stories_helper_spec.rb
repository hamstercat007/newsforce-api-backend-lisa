require "./app/helpers/stories_helper.rb"
require "json"

describe StoriesHelper do
  file = File.open "spec/mocks/sample_data.json"
  data = JSON.load file

  it "creates a tag list " do
    mock = data[0]
    expect(StoriesHelper.add_to_tag_list(mock)).to eq(["us-canada", "bbc-news"])
  end

  it "creates a tag list " do
    mock = data[1]
    expect(StoriesHelper.add_to_tag_list(mock)).to eq(["al-jazeera", "asia"])
  end

  it "creates a tag list " do
    mock = data[2]
    expect(StoriesHelper.add_to_tag_list(mock)).to eq(["al-jazeera"])
  end

  it "creates a tag list " do
    mock = data[7]
    expect(StoriesHelper.add_to_tag_list(mock)).to eq(["associated-press", "Paris"])
  end
end
