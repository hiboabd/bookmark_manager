require 'spec_helper'
require 'pg'

feature 'Adding bookmarks' do
  scenario 'adds url to bookmarks table' do
    visit('/bookmarks/add')
    fill_in :url, with: 'http://www.bbc.com'
    click_button('Submit')
    expect(page).to have_content "http://www.bbc.com"
  end
end
