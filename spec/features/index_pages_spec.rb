require 'rails_helper'

RSpec.feature "IndexPages", type: :feature do
  context 'going to a website' do
    Steps 'being welcomed' do
      Given 'I am on the index page' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content 'Welcome'
      end
    end #ending steps
  end #ending context
end #ends rspec
