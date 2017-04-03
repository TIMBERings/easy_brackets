require 'rails_helper'

RSpec.describe "bowlers/edit", type: :view do
  before(:each) do
    @bowler = assign(:bowler, Bowler.create!(
      :starting_lane => 1
    ))
  end

  it "renders the edit bowler form" do
    render

    assert_select "form[action=?][method=?]", bowler_path(@bowler), "post" do

      assert_select "input#bowler_starting_lane[name=?]", "bowler[starting_lane]"
    end
  end
end
