require 'rails_helper'

RSpec.describe Story, type: :model do
  describe '#populate_from_api' do
    it 'populates the database with API news' do
      expect { Story.populate_from_api }.to change { Story.count }.by(10)
    end

    it 'has a maximum of 10 from each news source when populating the api' do
      #puts Story.where(publisher: 'al-jazeera-english')
      expect { Story.populate_from_api }.to change { 
        Story.where(publisher: 'Al Jazeera English').count 
      }.by 10
    end
  end
end


