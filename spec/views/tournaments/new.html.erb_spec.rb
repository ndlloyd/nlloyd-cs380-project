require 'spec_helper'

describe "tournaments/new" do
  before(:each) do
    assign(:tournament, stub_model(Tournament,
      :description => "MyString",
      :owner => 1,
      :winnerHigh => false
    ).as_new_record)
  end

  it "renders new tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path, :method => "post" do
      assert_select "input#tournament_description", :name => "tournament[description]"
      assert_select "input#tournament_owner", :name => "tournament[owner]"
      assert_select "input#tournament_winnerHigh", :name => "tournament[winnerHigh]"
    end
  end
end
