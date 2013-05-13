require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    subject { page }
    before { visit root_path }

    it {should have_selector('h1', :text => 'Sample App')}

    it {should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")}

    it {
      page.should_not have_selector('title', :text => '| Home')}
  end

 describe "Help" do 
 	it "should include 'Help'" do 
 		visit help_path
 		page.should have_content('Help')
 	end

  it "should have the right title." do 
    visit help_path
    page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | Help")
  end

 end
 describe "About page" do
 	it "The about page should contain the words 'About Us'" do
 		visit about_path
 		page.should have_content('About Us')
 	end

  it "should have the right title." do 
    visit about_path
    page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | About Us")
  end
 end

 describe "Contact page" do
  it "should have the title 'Contact'" do 
    visit contact_path
    page.should have_selector('title', 
      text: "Ruby on Rails Tutorial Sample App | Contact")
  end

  it "should have the h1 'contact'" do
    visit contact_path
    page.should have_selector('h1', 
      text: "Contact")
  end
end





end

