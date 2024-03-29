require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'index'" do
    it "returns http success with right title" do
      visit root_path
      page.should have_selector("title", :content => "SICON Home Page")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      visit about_path
      page.should have_selector("title", :content => "SICON Sobre a empresa")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      visit contact_path
      page.should have_selector("title", :content => "Entre em contato com a Sicon")
    end
  end
end
