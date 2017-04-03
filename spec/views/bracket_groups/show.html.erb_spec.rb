require 'rails_helper'

RSpec.describe "bracket_groups/show", type: :view do
  before(:each) do
    @bracket_group = assign(:bracket_group, BracketGroup.create!(
      :name => "Name",
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
