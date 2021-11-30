require 'rails_helper'

RSpec.describe Story, type: :model do
  describe 'API call with News API' do
    it 'populates the database with API news' do
      expect { Story.populate_from_Api }.to change { Story.count }.by(20)
    end
  end
end