require 'rails_helper'

RSpec.describe "brackets/index", type: :view do
  before(:each) do
    assign(:brackets, [
      Bracket.create!(
        :bracket_group => nil,
        :seeds => "",
        :results => ""
      ),
      Bracket.create!(
        :bracket_group => nil,
        :seeds => "",
        :results => ""
      )
    ])
  end

  it "renders a list of brackets" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
