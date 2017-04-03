require 'rails_helper'

RSpec.describe "brackets/new", type: :view do
  before(:each) do
    assign(:bracket, Bracket.new(
      :bracket_group => nil,
      :seeds => "",
      :results => ""
    ))
  end

  it "renders new bracket form" do
    render

    assert_select "form[action=?][method=?]", brackets_path, "post" do

      assert_select "input#bracket_bracket_group_id[name=?]", "bracket[bracket_group_id]"

      assert_select "input#bracket_seeds[name=?]", "bracket[seeds]"

      assert_select "input#bracket_results[name=?]", "bracket[results]"
    end
  end
end
