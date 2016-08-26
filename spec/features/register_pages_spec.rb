require 'rails_helper'

RSpec.feature "RegistrationPages", type: :feature do
  context 'filling in registration info' do
    Steps 'fill in my info to register' do
      Given 'I am on the landing page' do
        visit '/'
      end # ends given
      When 'I fill in username, password, name, street, city, state, zip, country, and email' do
        fill_in 'username', with: 'HelloKitty'
        fill_in 'password', with: 'ninjaturtles'
        fill_in 'name', with: 'Thorgie Thor'
        fill_in 'street', with: '12345 Betty Boop Ln'
        fill_in 'city', with: 'Brooklyn'
        fill_in 'state', with: 'New York'
        fill_in 'zip', with: '66382'
        fill_in 'country', with: 'USA'
        fill_in 'email', with: 'thorgy_thor@gmail.com'
      end # ending then
      And 'I can submit my information' do
        click_button 'Submit Registration'
      end #end and
      Then 'I am taken to a page whenere I can see the information i registered with' do
        expect(page).to have_content 'HelloKitty'
        expect(page).to have_content 'ninjaturtles'
        expect(page).to have_content 'Thorgie Thor'
        expect(page).to have_content '12345 Betty Boop Ln'
        expect(page).to have_content 'Brooklyn'
        expect(page).to have_content 'New York'
        expect(page).to have_content '66382'
        expect(page).to have_content 'USA'
        expect(page).to have_content 'thorgy_thor@gmail.com'
      end # ends then
      Then 'After I register, I will be asked to log in w/ username and password' do
        click_button 'Log In'
      end #end then
    end #ends steps
  end #ends context
end # ends rspec
