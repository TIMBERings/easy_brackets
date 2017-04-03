require 'rails_helper'

RSpec.describe "bowlers/index", type: :view do
  before(:each) do
    assign(:bowlers, [
      Bowler.create!(
        :starting_lane => 2
      ),
      Bowler.create!(
        :starting_lane => 2
      )
    ])
  end

  it "renders a list of bowlers" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
