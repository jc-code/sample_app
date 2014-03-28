require 'spec_helper'

feature "Home page" do

  background {visit root_path}
  subject {page}

  scenario "should have the content 'Sample App'" do 
    should have_content('Sample App')
  end

  scenario "should have base title" do
    should have_title(full_title(""))
  end

  scenario "should not have custom page title" do
    should_not have_title("| Home")
  end
  
end

feature "Help page" do

  background {visit help_path}
  subject{page}

  scenario "should have the content 'Help'" do 
    should have_content('Help')
  end

  scenario "should have title 'Help'" do
    should have_title(full_title("Help"))
  end
end

feature "About page" do

  background {visit about_path}
  subject{page}

  scenario "should have the content 'About'" do 
    should have_content('About')
  end

  scenario "should have title 'About'" do
    should have_title(full_title("About"))
  end
end

feature "Contact page" do

  background { visit contact_path }
  subject{page}

  scenario "should have the content 'Contact'" do 
    should have_content('contact')
  end

  scenario "should have title 'Contact'" do
    should have_title(full_title("Contact"))
  end
end





