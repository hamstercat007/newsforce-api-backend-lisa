require "./app/helpers/stories_helper.rb"
require "json"

describe StoriesHelper do
  file = File.open "spec/mocks/sample_data.json"
  data = JSON.load file

  it "creates a north-america tag" do
    mock = data[0]
    expect(StoriesHelper.add_to_tag_list(mock)).to eq(["north-america"])
  end

  it "creates an asia tag" do
    mock = data[1]
    expect(StoriesHelper.add_to_tag_list(mock)).to eq(["asia"])
  end

  it "creates a south-america tag" do
    mock = data[5]
    expect(StoriesHelper.add_to_tag_list(mock)).to eq(["south-america"])
  end
end
