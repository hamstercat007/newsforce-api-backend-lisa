require './app/helpers/stories_helper.rb'
require "json"


describe StoriesHelper do
  
  file = File.open "spec/mocks/sample_data.json"
  data = JSON.load file

  it 'creates a tag list ' do
    mock = data[1]
    puts mock
    expect(StoriesHelper.add_to_tag_list(mock)).to eq ''
  end
end