require 'rails_helper'

feature 'user visits landing page' do
  scenario 'and is on the root path' do
    visit '/'
    expect(current_path).to eq('/')
  end
  scenario 'and they see the tbi_alive_logo' do
    visit '/'
    within '.navbar' do
      expect(page).to have_selector('#tbi-navbar-logo')
      page.find('#tbi-navbar-logo')['src'].should have_content 'tbi_logo.png'
    end
  end
  scenario 'and they see the navbar' do
    visit '/'
    expect(page).to have_selector('.navbar')
  end
end