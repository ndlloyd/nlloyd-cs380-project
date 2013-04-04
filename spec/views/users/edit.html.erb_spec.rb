require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :userName => "MyString",
      :passwordDigest => "MyString",
      :admin => false,
      :firstName => "MyString",
      :lastName => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_userName", :name => "user[userName]"
      assert_select "input#user_passwordDigest", :name => "user[passwordDigest]"
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_firstName", :name => "user[firstName]"
      assert_select "input#user_lastName", :name => "user[lastName]"
    end
  end
end
