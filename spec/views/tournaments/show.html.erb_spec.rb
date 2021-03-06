require 'spec_helper'

describe "tournaments/show" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :shortDescription => "Short Description",
      :fullDescription => "Full Description",
      :owner => 1,
      :winnerHigh => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Short Description/)
    rendered.should match(/Full Description/)
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
