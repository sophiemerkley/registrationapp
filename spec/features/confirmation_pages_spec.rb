require 'rails_helper'

RSpec.feature "ConfirmationPages", type: :feature do
  context 'I am redierected to a confirmation page' do
    Steps 'Saying Confirmed' do
      Given 'I am on the confirmation page' do
         visit 'confirmation/valid_credentials'
      end # end given
      Then 'The page says Valid credentials' do
        expect(page).to have_content 'Valid credentials'
      end # end then
    end #end steps
  end #end of context
end #end of Feature rspec me
