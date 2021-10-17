require 'rails_helper'

feature 'Sign Up and Log In' do
  scenario "user can sign up, log out and log in" do
    visit ('/sign_up')
      fill_in('user[first_name]', with: 'Example')
      fill_in('user[email]', with: 'test@example.com')
      fill_in('user[password]', with: '12345678')
      click_button('Sign Up')
      expect(page).to have_content ("Welcome to your feed Example")
      click_button( 'Logout')
      visit ('/sign_in')
      fill_in('email', with: 'test@example.com') 
      fill_in('password', with: '12345678')
      click_button('Log In')
      expect(page).to have_content ("Welcome to your feed Example")
  end 
end 