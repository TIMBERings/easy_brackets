require 'rails_helper'

RSpec.describe "bracket_groups/edit", type: :view do
  before(:each) do
    @bracket_group = assign(:bracket_group, BracketGroup.create!(
      :name => "MyString",
      :event => nil
    ))
  end

  it "renders the edit bracket_group form" do
    render

    assert_select "form[action=?][method=?]", bracket_group_path(@bracket_group), "post" do

      assert_select "input#bracket_group_name[name=?]", "bracket_group[name]"

      assert_select "input#bracket_group_event_id[name=?]", "bracket_group[event_id]"
    end
  end
end
