require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :userName => "User Name",
        :passwordDigest => "Password Digest",
        :admin => false,
        :firstName => "First Name",
        :lastName => "Last Name"
      ),
      stub_model(User,
        :userName => "User Name",
        :passwordDigest => "Password Digest",
        :admin => false,
        :firstName => "First Name",
        :lastName => "Last Name"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
