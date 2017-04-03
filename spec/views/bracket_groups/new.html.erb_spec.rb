require 'rails_helper'

RSpec.describe "bracket_groups/new", type: :view do
  before(:each) do
    assign(:bracket_group, BracketGroup.new(
      :name => "MyString",
      :event => nil
    ))
  end

  it "renders new bracket_group form" do
    render

    assert_select "form[action=?][method=?]", bracket_groups_path, "post" do

      assert_select "input#bracket_group_name[name=?]", "bracket_group[name]"

      assert_select "input#bracket_group_event_id[name=?]", "bracket_group[event_id]"
    end
  end
end
