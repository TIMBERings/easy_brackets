require 'rails_helper'

RSpec.describe "bowlers/new", type: :view do
  before(:each) do
    assign(:bowler, Bowler.new(
      :starting_lane => 1
    ))
  end

  it "renders new bowler form" do
    render

    assert_select "form[action=?][method=?]", bowlers_path, "post" do

      assert_select "input#bowler_starting_lane[name=?]", "bowler[starting_lane]"
    end
  end
end
