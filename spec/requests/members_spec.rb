require 'rails_helper'

RSpec.describe "Members", type: :request do
  describe "GET /members" do
    it "works! (now write some real specs)" do
      get members_path
      expect(response).to have_http_status(200)
    end
  end

  describe "member administration" do
    it "removes a member from home" do
      # 1. Create home member X with e-mail address "..."
      # 2. Log in as home administrator
      # 3. Navigate to home administration
      # 4. Remove member X, specifying R as reason
      # 5. Log out
      # 6. Try to log in as member X -> should display removal message with reason R
    end
  end
end
