require 'rails_helper'

describe "Static pages" do
	let(:basetitle) {"Ruby on Rails Tutorial Sample App | "}

	# test home page
	describe "Home page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		end
		it "should have the right title" do
  			visit '/static_pages/home'
			expect(page).to have_title("#{basetitle}Home")
		end
	end
	# test help page
	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
		it "should have the right title" do
  			visit '/static_pages/help'
			expect(page).to have_title("#{basetitle}Help")
		end
	end
	# test about page
	describe "About page" do
    	it "should have the content 'About Us'" do
      		visit '/static_pages/about'
      		expect(page).to have_content('About Us')
		end 
		it "should have the right title" do
  			visit '/static_pages/about'
			expect(page).to have_title("#{basetitle}About Us")
		end
	end
	# test contact page
	describe "Contact page" do
    	it "should have the content 'Contact'" do
      		visit '/static_pages/contact'
      		expect(page).to have_content('Contact')
		end 
		it "should have the right title" do
  			visit '/static_pages/contact'
			expect(page).to have_title("#{basetitle}Contact")
		end
	end
end
