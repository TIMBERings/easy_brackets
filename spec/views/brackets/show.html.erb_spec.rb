require 'rails_helper'

RSpec.describe "brackets/show", type: :view do
  before(:each) do
    @bracket = assign(:bracket, Bracket.create!(
      :bracket_group => nil,
      :seeds => "",
      :results => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
