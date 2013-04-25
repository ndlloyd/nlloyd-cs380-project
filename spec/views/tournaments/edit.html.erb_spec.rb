require 'spec_helper'

describe "tournaments/edit" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :shortDescription => "MyString",
      :fullDescription => "MyString",
      :owner => 1,
      :winnerHigh => false
    ))
  end

  it "renders the edit tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path(@tournament), :method => "post" do
      assert_select "input#tournament_shortDescription", :name => "tournament[shortDescription]"
      assert_select "input#tournament_fullDescription", :name => "tournament[fullDescription]"
      assert_select "input#tournament_owner", :name => "tournament[owner]"
      assert_select "input#tournament_winnerHigh", :name => "tournament[winnerHigh]"
    end
  end
end
