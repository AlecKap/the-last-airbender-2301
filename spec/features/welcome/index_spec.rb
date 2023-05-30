require 'rails_helper'

RSpec.describe 'Welcome page' do
  describe 'When I visit the welcome page' do
    describe "and i select 'Fire Nation' form the selct field" do
       it 'I am redirected to the search index page' do
        visit root_path
        expect(page).to have_button('Search For Members')

        select 'Fire Nation', from: 'nation'

        click_button 'Search For Members'

        expect(current_path).to eq(search_path)
      end
    end
  end
end