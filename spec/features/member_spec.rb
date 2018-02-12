require "rails_helper"

RSpec.feature "member feature" do
  before :context do
    @home = Home.create name: "Example Home", slug: "example-home"
  end

  context "in a home" do
    scenario "user creates an account", js: true do
      visit "/#{@home.id}/members/new"

      fill_in "member_username", with: "example-username"
      fill_in "member_password", with: "example-password"
      check "member_terms_of_service"
      click_button "Create account"

      expect(page).to have_content "Success"
    end
  end

  # describe "blocked member" do
  #   it "is blocked" do
  #     @home = Home.new name: "Example Home", slug: "example-home"
  #     @member = Member.new home_id: @home.id, username: "example-user",
  #                         password: "example-pw", blocked: true
  #   end
  #   it "tries to log in" do
  #     # 1. Create home member X with e-mail address "..."
  #     # 2. Log in as home administrator
  #     # 3. Navigate to home administration
  #     # 4. Remove member X, specifying R as reason
  #     # 5. Log out
  #     # 6. Try to log in as member X -> should display removal message with reason R
  #   end
  # end
end
