require 'spec_helper'

describe "tournaments/index" do
  before(:each) do
    assign(:tournaments, [
      stub_model(Tournament,
        :description => "Description",
        :owner => 1,
        :winnerHigh => false
      ),
      stub_model(Tournament,
        :description => "Description",
        :owner => 1,
        :winnerHigh => false
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
