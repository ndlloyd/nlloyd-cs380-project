require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :userName => "User Name",
      :passwordDigest => "Password Digest",
      :admin => false,
      :firstName => "First Name",
      :lastName => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User Name/)
    rendered.should match(/Password Digest/)
    rendered.should match(/false/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
  end
end
