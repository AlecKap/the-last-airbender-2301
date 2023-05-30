require 'rails_helper'

RSpec.describe 'Search index page' do
  describe 'When I vist the search index page' do
    before :each do
      visit root_path

      select 'Fire Nation', from: 'nation'

      click_button 'Search For Members'
    end

    it 'i see the total number of members who live in the selected nation' do
      expect(page).to have_content("Number of Members")
    end

    it 'I see a list of members, each with details' do
      
    end
  end
end