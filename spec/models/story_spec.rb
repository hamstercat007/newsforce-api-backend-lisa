require 'rails_helper'

RSpec.describe Story, type: :model do
  describe '#populate_from_api' do
    it 'populates the database with API news' do
      expect { Story.populate_from_api }.to change { Story.count }.by(30)
    end

    context  'a maximum of 10 from each news source when populating the api' do
      it 'adds Al-Jazeera news stories' do 
        expect { Story.populate_from_api }.to change { 
          Story.where(publisher: 'Al Jazeera English').count 
        }.by 10
      end

      it 'adds AP news stories' do 
        expect { Story.populate_from_api }.to change { 
          Story.where(publisher: 'Associated Press').count 
        }.by 10
      end

      it 'adds BBC news stories' do 
        expect { Story.populate_from_api }.to change { 
          Story.where(publisher: 'BBC News').count 
        }.by 10
      end
    end
  end
end


