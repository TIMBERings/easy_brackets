require 'rails_helper'

RSpec.describe "bracket_groups/index", type: :view do
  before(:each) do
    assign(:bracket_groups, [
      BracketGroup.create!(
        :name => "Name",
        :event => nil
      ),
      BracketGroup.create!(
        :name => "Name",
        :event => nil
      )
    ])
  end

  it "renders a list of bracket_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
