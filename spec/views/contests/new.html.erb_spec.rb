require 'spec_helper'

describe "contests/new" do
  before(:each) do
    assign(:contest, stub_model(Contest,
      :firstContestant => "MyString",
      :secondContestant => "MyString",
      :firstScore => 1,
      :secondScore => 1,
      :tournament_id => 1,
      :bracket => 1
    ).as_new_record)
  end

  it "renders new contest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contests_path, :method => "post" do
      assert_select "input#contest_firstContestant", :name => "contest[firstContestant]"
      assert_select "input#contest_secondContestant", :name => "contest[secondContestant]"
      assert_select "input#contest_firstScore", :name => "contest[firstScore]"
      assert_select "input#contest_secondScore", :name => "contest[secondScore]"
      assert_select "input#contest_tournament_id", :name => "contest[tournament_id]"
      assert_select "input#contest_bracket", :name => "contest[bracket]"
    end
  end
end
