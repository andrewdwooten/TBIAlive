require 'rails_helper'

feature 'user visits landing page' do
  scenario 'and is on the root path' do
    visit '/'
    expect(current_path).to eq('/')
  end
  scenario 'and they see the tbi_alive_logo' do
    visit '/'
    within '#logo_box' do
      expect(page).to have_selector('#tbi_landing_logo')
      page.find('#tbi_landing_logo')['src'].should have_content 'tbi_logo.png'
    end
  end
end