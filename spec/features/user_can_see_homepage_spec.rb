require 'rails_helper'

feature 'Homepage' do
  scenario 'Shows user homepage leads sign up page' do
    visit('/')
    expect(page).to have_content 'Welcome to the Finstagram (Fake Instagram)'
    click_link "Sign Up"
    expect(page).to have_content 'Sign Up'
  end

  scenario 'Shows user homepage leads login page' do
    visit('/')
    click_link "Login"
    expect(page).to have_content 'Login Here!'
  end
end