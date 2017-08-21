require 'rails_helper'

feature 'user visits landing page' do
  scenario 'and is on the root path' do
    visit '/'
    expect(current_path).to eq('/')
  end
end