# coding: utf-8
require 'spec_helper'

describe "PagesAndMembers" do
  describe "GET /pages_and_members" do
    it "works! (now write some real specs)" do
      get about_path
      response.status.should be(200)
    end
  end

  describe "Members link into about page" do
      it "should show the correct link" do
          visit about_path
          click_link('Conheça nossos membros')
          page.should have_content("Membros")
          current_path.should == members_path
      end
  end
end
