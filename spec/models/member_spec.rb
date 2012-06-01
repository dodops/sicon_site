require 'spec_helper'

describe Member do
  describe "create a new member" do
    it "with rigth params" do
      @user = FactoryGirl.create(:member)
      @user.should be_valid
    end

    it "with wrong params" do
      member = Member.create(:name => "Douglas", :email => nil, :bio => nil)
      member.should_not be_valid
    end
  end
end
