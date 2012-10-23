require 'spec_helper'

describe "Newusers" do
  describe "GET /newusers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get newusers_path
      response.status.should be(200)
    end
  end
end

describe "making a new user" do
  it "requires all valid inputs" do
    visit newusers_path
    click_link "New User"
    fill_in "Name", with: "Jevon"
    fill_in "Username", with: "kochez"
    fill_in "Password", with: "alakazham1"
    fill_in "Year", with: 2015
    fill_in "Email", with: "jevonyeoh@gmail.com"
    fill_in "Major", with: "Computer Science"
    click_button "Create Newuser"
    
    page.should have_content "successfully"
  end
end
