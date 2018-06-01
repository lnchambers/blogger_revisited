require "rails_helper"

describe "As a Visitor" do
  describe "when I visit the root path" do
    it "I can log in" do
      user = create(:user)
      visit root_path

      expect(page).to have_content("Login")
      click_on "Login"

      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Log in"

      expect(page).to have_content("Featured")
    end
  end
end
