require 'spec_helper'

feature "Sign up pages" do

  background { visit signup_path }
  subject{page}

  scenario "should have the content 'Sign up'" do 
    should have_content('Sign up')
  end

  scenario "should have title 'Sign up'" do
    should have_title(full_title('Sign up'))
  end
end
