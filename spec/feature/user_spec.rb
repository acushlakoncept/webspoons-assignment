require 'rails_helper'

RSpec.describe User, type: :feature do
    it "loads index page" do
        visit root_path
        expect(page).to have_content 'All Users'
    end
end