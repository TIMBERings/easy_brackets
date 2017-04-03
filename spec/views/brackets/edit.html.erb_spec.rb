require 'rails_helper'

RSpec.describe "brackets/edit", type: :view do
  before(:each) do
    @bracket = assign(:bracket, Bracket.create!(
      :bracket_group => nil,
      :seeds => "",
      :results => ""
    ))
  end

  it "renders the edit bracket form" do
    render

    assert_select "form[action=?][method=?]", bracket_path(@bracket), "post" do

      assert_select "input#bracket_bracket_group_id[name=?]", "bracket[bracket_group_id]"

      assert_select "input#bracket_seeds[name=?]", "bracket[seeds]"

      assert_select "input#bracket_results[name=?]", "bracket[results]"
    end
  end
end
