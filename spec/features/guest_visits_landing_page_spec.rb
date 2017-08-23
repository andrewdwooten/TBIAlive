require 'rails_helper'

feature 'user visits landing page' do
  before(:each) do
    visit '/'
  end
  scenario 'and is on the root path' do
    
    expect(current_path).to eq('/')
  end
  scenario 'and they see the tbi_alive_logo' do
    
    within '.navbar' do
      expect(page).to have_selector('#tbi-navbar-logo')
      page.find('#tbi-navbar-logo')['src'].should have_content 'tbi_logo.png'
    end
  end
  scenario 'and they see the navbar' do
    
    expect(page).to have_selector('.navbar')
  end
  scenario 'and they see the philosophy card' do
    
    expect(page).to have_content('#philosophy-card')
  end
end