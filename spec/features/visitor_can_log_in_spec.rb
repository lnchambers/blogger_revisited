require "rails_helper"

describe "As a Visitor" do
  describe "when I visit the root path" do
    it "I can log in" do
      visit root_path

      expect(page).to have_content("Login")
    end
  end
end
