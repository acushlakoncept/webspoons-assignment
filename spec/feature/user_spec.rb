require 'rails_helper'

RSpec.describe User, type: :feature do
  it 'loads index page' do
    visit root_path
    expect(page).to have_content 'All Users'
  end
  
    it 'loads new user modal form' do
    visit root_path
    click_link 'New User'
    within('[data-user-modal-target="container"]') do
      expect(page).to have_content 'Create User'
    end
  end

  it 'adds a new user' do
    visit root_path
    click_link 'New User'
    within('[data-user-modal-target="container"]') do
      fill_in 'user[name]', with: 'Test User'
      fill_in 'user[email]', with: 'test.user@mail.com'
      fill_in 'user[phone]', with: '11111111111'
      click_button('Create User')
    end
    expect(page).to have_content('User was successfully created.')
  end
end

