require 'spec_helper'

describe MembersController do
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "returns the list of members" do
      visit members_path
      page.should have_content("Membros: ")
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end
end
