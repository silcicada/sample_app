require 'spec_helper'

describe "StaticPages" do
  let(:basic_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home pages" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home/'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title"
      visit '/static_pages/home'
      exect(page).to have_title("#{basic_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home') 
    end
  end


  describe "Help page" do 

	  it "should have the content 'Help'" do
		  visit '/static_pages/help'
		  expect(page).to have_content('Help')
	  end

    it "should have the title 'Help'"
      visit '/static_pages/about'
      expect(page).to have_title("#{basic_title} | Help")
    end
  end

  describe "About page" do

  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
  

    it "should have the title 'About Us'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{basic_title} | About Us")
    end
  end

  describe "Contact page"

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
 
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{basic_title} | Contact")
    end
  end
end

