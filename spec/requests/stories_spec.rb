require 'rails_helper'
require 'rest-client'

RSpec.describe "Stories", type: :request do
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  #make guadrian API call
  #expect Story.dosomethingwiththedata to be called

  describe "GET /guardian stories" do

    it 'gets a 200 response when trying to call the Guardian API' do
      api_key = ENV.fetch('GUARDIAN_API_KEY')
      puts api_key
      response = RestClient.get("https://content.guardianapis.com/search?page-size=30&api-key=#{api_key}&format=json&show-fields=body,headline,thumbnail")
      expect(response.code).to eq 200
    end
  end
end
