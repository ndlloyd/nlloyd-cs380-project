require 'spec_helper'

describe "contests/index" do
  before(:each) do
    assign(:contests, [
      stub_model(Contest,
        :firstContestant => "First Contestant",
        :secondContestant => "Second Contestant",
        :firstScore => 1,
        :secondScore => 2,
        :tournament_id => 3,
        :bracket => 4
      ),
      stub_model(Contest,
        :firstContestant => "First Contestant",
        :secondContestant => "Second Contestant",
        :firstScore => 1,
        :secondScore => 2,
        :tournament_id => 3,
        :bracket => 4
      )
    ])
  end

  it "renders a list of contests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Contestant".to_s, :count => 2
    assert_select "tr>td", :text => "Second Contestant".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
