require 'spec_helper'

feature "Home page" do
  scenario "should have the content 'Sample App'" do 
    visit '/static_pages/home'
    expect(page).to have_text('Sample App')
  end

  scenario "should have base title" do
    visit '/static_pages/home'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  end

  scenario "should not have custom page title" do
    visit '/static_pages/home'
    expect(page).not_to have_title("| Home")
  end
  
end

feature "Help page" do
  scenario "should have the content 'Help'" do 
    visit '/static_pages/help'
    expect(page).to have_text('Help')
  end

  scenario "should have title 'Help'" do
    visit '/static_pages/help'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  end
end

feature "About page" do
  scenario "should have the content 'About'" do 
    visit '/static_pages/about'
    expect(page).to have_text('About')
  end

  scenario "should have title 'About'" do
    visit '/static_pages/about'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
  end
end

feature "Contact page" do
  scenario "should have the content 'Contact'" do 
    visit '/static_pages/contact'
    expect(page).to have_text('contact')
  end

  scenario "should have title 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
  end
end



