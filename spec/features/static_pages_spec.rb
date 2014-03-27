require 'spec_helper'

feature "Home page" do
  scenario "should have the content 'Sample App'" do 
    visit '/static_pages/home'
    expect(page).to have_text('Sample App')
  end
end

feature "Help page" do
  scenario "should have the content 'Help'" do 
    visit '/static_pages/help'
    expect(page).to have_text('Help')
  end
end

feature "About page" do
  scenario "should have the content 'About'" do 
    visit '/static_pages/about'
    expect(page).to have_text('About')
  end
end
